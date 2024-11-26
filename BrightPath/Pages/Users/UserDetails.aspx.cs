using BrightPath.Helpers;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using static BrightPath.Helpers.EnumDatabaseVariables;

namespace BrightPath.Pages.Users
{
    public partial class UserDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if it's an update operation
                if (Request.QueryString["UserId"] != null)
                {
                    int userId = Convert.ToInt32(Request.QueryString["UserId"]);
                    LoadUserData(userId);
                }

                else
                {
                    Response.Redirect("Index");
                }
            }
        }

        private void LoadUserData(int userId)
        {
            // Replace with your database fetching logic
            DataRow userData = GetUserFromDatabase(userId);

            if (userData != null)
            {
                txtUsername.Text = userData["Username"].ToString();
                txtFullName.Text = userData["Name"].ToString();
                txtBirthDate.Text = Convert.ToDateTime(userData["BirthDate"]).ToString("yyyy-MM-dd");
                txtPhone.Text = userData["Phone"].ToString();
                txtEmail.Text = userData["Email"].ToString();

                int userType = Convert.ToInt32(userData["UserType"].ToString());
                string userTypeString = EnumHelper.GetEnumDescriptionFromInt<UserType>(userType);
                txtUserType.Text = userTypeString;

                if (userData["UserType"].ToString() == "2") // "مشرف"
                {
                    // SQL query to select user based on username
                    string sql = "SELECT * FROM Consultants WHERE UserId = @UserId";
                    var parameters = new Dictionary<string, object> { { "@UserId", userId } };

                    // Execute the query to fetch user details
                    DataRow consData = SqlHelper.SelectRow(sql, parameters);

                    ConsultantDataDiv.Visible = true;
                    ddlSupervisorType.SelectedValue = consData["ConsType"].ToString();
                    ddlSupervisorCertificate.SelectedValue = consData["CerType"].ToString();

                    // Check if a certificate file exists and show the download link
                    string certificateFileName = consData["CerFile"].ToString();
                    if (!string.IsNullOrEmpty(certificateFileName))
                    {
                        // Combine the folder path with the file name
                        string certificatePath = "~/Uploads/" + certificateFileName;

                        // Map the virtual path to the physical path
                        string physicalPath = Server.MapPath(certificatePath);

                        // Check if the file exists on the server
                        if (File.Exists(physicalPath))
                        {
                            // Display the download link if the file exists
                            hlDownloadSupervisorCertificate.Visible = true;
                            hlDownloadSupervisorCertificate.NavigateUrl = certificatePath;
                        }
                        else
                        {
                            // Hide the download link if the file does not exist
                            hlDownloadSupervisorCertificate.Visible = false;
                        }
                    }
                    else
                    {
                        // Hide the download link if the certificate file name is empty or null
                        hlDownloadSupervisorCertificate.Visible = false;
                    }

                }
            }
        }

        private DataRow GetUserFromDatabase(int userId)
        {
            // SQL query to select user based on username
            string sql = "SELECT * FROM Users WHERE Id = @Id";
            var parameters = new Dictionary<string, object> { { "@Id", userId } };

            // Execute the query to fetch user details
            DataRow userRow = SqlHelper.SelectRow(sql, parameters);

            return userRow;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Update existing user
            int userId = Convert.ToInt32(Request.QueryString["UserId"]);
            UpdateUser(userId);
        }


        private void UpdateUser(int userId)
        {
            string username = txtUsername.Text;
            string fullName = txtFullName.Text;
            string birthDate = txtBirthDate.Text;
            string phone = txtPhone.Text;
            string email = txtEmail.Text;

            // Add logic to update user



        }
    }
}
