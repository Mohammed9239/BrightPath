using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Configuration;

namespace BrightPath.Helpers
{
    public static class SqlHelper
    {
        private static readonly string _connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"]?.ConnectionString;

        /// <summary>
        /// Executes a SQL command for INSERT, UPDATE, or DELETE.
        /// </summary>
        public static int ExecuteCommand(string sql, Dictionary<string, object> parameters = null)
        {
            using (var connection = new SqlConnection(_connectionString))
            using (var command = CreateCommand(connection, sql, parameters))
            {
                connection.Open();
                return command.ExecuteNonQuery();
            }
        }

        /// <summary>
        /// Executes a SQL query to read data and returns it as a DataTable.
        /// </summary>
        public static DataTable ReadData(string sql, Dictionary<string, object> parameters = null)
        {
            using (var connection = new SqlConnection(_connectionString))
            using (var command = CreateCommand(connection, sql, parameters))
            using (var adapter = new SqlDataAdapter(command))
            {
                connection.Open();
                var table = new DataTable();
                adapter.Fill(table);
                return table;
            }
        }

        /// <summary>
        /// Executes a SQL query and returns a single row as a DataRow.
        /// </summary>
        public static DataRow SelectRow(string sql, Dictionary<string, object> parameters = null)
        {
            DataTable table = ReadData(sql, parameters);
            return table.Rows.Count > 0 ? table.Rows[0] : null;
        }

        /// <summary>
        /// Executes a SQL query and returns a single field value as a string.
        /// </summary>
        public static string SelectField(string sql, Dictionary<string, object> parameters = null)
        {
            using (var connection = new SqlConnection(_connectionString))
            using (var command = CreateCommand(connection, sql, parameters))
            {
                connection.Open();
                object result = command.ExecuteScalar();
                return result?.ToString(); // Convert to string or return null if result is null
            }
        }

        /// <summary>
        /// Executes a SQL query that returns a single value (e.g., the last inserted ID).
        /// </summary>
        public static int ExecuteScalarAndGetId(string sql, Dictionary<string, object> parameters = null)
        {
            using (var connection = new SqlConnection(_connectionString))
            using (var command = CreateCommand(connection, sql, parameters))
            {
                connection.Open();
                object result = command.ExecuteScalar();
                return Convert.ToInt32(result);
            }
        }

        /// <summary>
        /// Creates and configures a SqlCommand with the given SQL and parameters.
        /// </summary>
        private static SqlCommand CreateCommand(SqlConnection connection, string sql, Dictionary<string, object> parameters)
        {
            var command = connection.CreateCommand();
            command.CommandText = sql;
            command.CommandType = CommandType.Text;

            if (parameters != null)
            {
                foreach (var param in parameters)
                {
                    command.Parameters.AddWithValue(param.Key, param.Value ?? DBNull.Value);
                }
            }

            return command;
        }
    }
}
