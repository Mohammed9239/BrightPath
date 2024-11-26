using BrightPath.Helpers;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.IO;
using System.Security.Cryptography;
using System.Text;
using System.Web.UI.WebControls;





public static class MainHelper
{


    public static void PopulateDropDownList(DropDownList dropdown, string tableName, string valueField, string textField, string whereClause = null, Dictionary<string, object> parameters = null)
    {
        // Fetch data from the database with an optional WHERE clause
        var data = GetDataFromDatabase(tableName, valueField, textField, whereClause, parameters);

        // Bind data to the DropDownList
        dropdown.DataSource = data;
        dropdown.DataValueField = "Value";
        dropdown.DataTextField = "Text";
        dropdown.DataBind();

        // Optionally add a default "Select" item
        dropdown.Items.Insert(0, new ListItem("اختر", ""));
    }

    private static List<SelectItem> GetDataFromDatabase(string tableName, string valueField, string textField, string whereClause = null, Dictionary<string, object> parameters = null)
    {
        // Build the SQL query
        string sql = $"SELECT {valueField}, {textField} FROM {tableName}";
        if (!string.IsNullOrEmpty(whereClause))
        {
            sql += " WHERE " + whereClause;
        }

        // Fetch data from the database
        DataTable table = SqlHelper.ReadData(sql, parameters);

        // Convert the DataTable to a List<SelectItem>
        var data = new List<SelectItem>();
        foreach (DataRow row in table.Rows)
        {
            data.Add(new SelectItem
            {
                Value = row[valueField]?.ToString(),
                Text = row[textField]?.ToString()
            });
        }

        return data;
    }


}


public static class EnumHelper
{
    public static string GetEnumDescriptionFromInt<TEnum>(int value) where TEnum : Enum
    {
        if (Enum.IsDefined(typeof(TEnum), value))
        {
            var enumValue = (TEnum)(object)value;
            return GetEnumDescription(enumValue);
        }

        return "Unknown";
    }

    public static string GetEnumDescription(Enum value)
    {
        var fieldInfo = value.GetType().GetField(value.ToString());
        var descriptionAttributes = (System.ComponentModel.DescriptionAttribute[])fieldInfo?.GetCustomAttributes(typeof(System.ComponentModel.DescriptionAttribute), false);

        if (descriptionAttributes?.Length > 0)
        {
            return descriptionAttributes[0].Description;
        }

        return value.ToString(); // Fallback to enum name if no description is found
    }
}

public static class CryptoHelper
{
    private static readonly string EncryptionKey = "aA9n7B8C9D0E1F2G";

    // Encrypts the text using AES algorithm
    public static string Encrypt(string plainText)
    {
        using (Aes aesAlg = Aes.Create())
        {
            aesAlg.Key = Encoding.UTF8.GetBytes(EncryptionKey.PadRight(32));
            aesAlg.IV = new byte[16];

            ICryptoTransform encryptor = aesAlg.CreateEncryptor(aesAlg.Key, aesAlg.IV);

            using (MemoryStream msEncrypt = new MemoryStream())
            {
                using (CryptoStream csEncrypt = new CryptoStream(msEncrypt, encryptor, CryptoStreamMode.Write))
                {
                    using (StreamWriter swEncrypt = new StreamWriter(csEncrypt))
                    {
                        swEncrypt.Write(plainText);
                    }
                }

                return Convert.ToBase64String(msEncrypt.ToArray());
            }
        }
    }

    // Decrypts the encrypted text using AES algorithm
    public static string Decrypt(string cipherText)
    {
        using (Aes aesAlg = Aes.Create())
        {
            aesAlg.Key = Encoding.UTF8.GetBytes(EncryptionKey.PadRight(32));
            aesAlg.IV = new byte[16];

            ICryptoTransform decryptor = aesAlg.CreateDecryptor(aesAlg.Key, aesAlg.IV);

            using (MemoryStream msDecrypt = new MemoryStream(Convert.FromBase64String(cipherText)))
            {
                using (CryptoStream csDecrypt = new CryptoStream(msDecrypt, decryptor, CryptoStreamMode.Read))
                {
                    using (StreamReader srDecrypt = new StreamReader(csDecrypt))
                    {
                        return srDecrypt.ReadToEnd();
                    }
                }
            }
        }
    }






}


public class SelectItem
{
    public string Value { get; set; }
    public string Text { get; set; }
}