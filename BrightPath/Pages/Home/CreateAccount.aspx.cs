using BrightPath.Helpers;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BrightPath.Pages.Home
{
    public partial class CreateAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void ddlUserType_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Check the selected value
            if (ddlUserType.SelectedValue == "2")
            {
                ConsultantDataDiv.Visible = true;
            }
            else
            {
                ConsultantDataDiv.Visible = false;
            }
        }



        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Page.Validate();

            //if is selected "مشرف"
            if (ddlUserType.SelectedValue == "2")
            {
                rfvSupervisorType.Validate();
                rfvSupervisorCertificate.Validate();
                rfvSupervisorCertificateFile.Validate();
            }

            if (Page.IsValid)
            {
                // Save the data
                SaveUserAndConsultantData();
            }
        }




        protected void SaveUserAndConsultantData()
        {
            // Get the values from the input controls
            string name = txtFullName.Text;
            string email = txtEmail.Text;
            long phone = Convert.ToInt64(txtPhone.Text);
            DateTime birthDate = Convert.ToDateTime(txtBirthDate.Text);
            int userType = Convert.ToInt32(ddlUserType.SelectedValue);
            string username = txtUsername.Text;
            string password = txtPassword.Text;
            string encryptedPassword = CryptoHelper.Encrypt(password);


            // Validate if the username already exists
            string checkUsernameSql = "SELECT COUNT(*) FROM [dbo].[Users] WHERE [UserName] = @UserName";
            var usernameParams = new Dictionary<string, object> { { "@UserName", username } };
            int usernameExists = Convert.ToInt32(SqlHelper.SelectField(checkUsernameSql, usernameParams));

            if (usernameExists > 0)
            {
                // Username already exists
                lblValidation.Text = "اسم المستخدم موجود بالفعل.";
                lblValidation.Visible = true;
                return;
            }

            // Validate if the email already exists
            string checkEmailSql = "SELECT COUNT(*) FROM [dbo].[Users] WHERE [Email] = @Email";
            var emailParams = new Dictionary<string, object> { { "@Email", email } };
            int emailExists = Convert.ToInt32(SqlHelper.SelectField(checkEmailSql, emailParams));

            if (emailExists > 0)
            {
                // Email already exists
                lblValidation.Text = "البريد الإلكتروني موجود بالفعل.";
                lblValidation.Visible = true;
                return;
            }


            // Prepare SQL and parameters for Users table
            string userInsertSql = @"
                    INSERT INTO [dbo].[Users]
                        ([Name], [Email], [Phone], [BirthDate], [UserType], [UserName], [Password])
                    VALUES
                        (@Name, @Email, @Phone, @BirthDate, @UserType, @UserName, @Password);
                    SELECT SCOPE_IDENTITY();";

            var userParams = new Dictionary<string, object>
            {
                { "@Name", name },
                { "@Email", email },
                { "@Phone", phone },
                { "@BirthDate", birthDate },
                { "@UserType", userType },
                { "@UserName", username },
                { "@Password", encryptedPassword }
            };

            // Execute Users query and get the new UserId
            int userId = Convert.ToInt32(SqlHelper.ExecuteScalarAndGetId(userInsertSql, userParams));

            if (userType == 2)
            {
                // Get the values from the input controls
                int consType = Convert.ToInt32(ddlSupervisorType.SelectedValue);
                int cerType = Convert.ToInt32(ddlSupervisorCertificate.SelectedValue);

                // Get the file name and generate a unique name
                string originalFileName = fuSupervisorCertificate.FileName;
                string fileExtension = Path.GetExtension(originalFileName); // Get file extension
                string uniqueFileName = Guid.NewGuid().ToString() + fileExtension; // Generate a unique name using GUID

                // Get the file path
                string uploadsFolder = Server.MapPath("~/Uploads/");

                // Check if the folder exists, if not, create it
                if (!Directory.Exists(uploadsFolder))
                {
                    Directory.CreateDirectory(uploadsFolder); // Create the directory if it doesn't exist
                }

                // Combine the folder path and unique file name
                string filePath = Path.Combine(uploadsFolder, uniqueFileName);

                // Save the uploaded file to the server with the unique name
                fuSupervisorCertificate.SaveAs(filePath);

                // Now you can use 'uniqueFileName' to store the file name in the database
                string cerFile = uniqueFileName; // Store the unique file name


                // Prepare SQL and parameters for Consultants table
                string consultantInsertSql = @"
            INSERT INTO [dbo].[Consultants]
                ([UserId], [ConsType], [CerType], [CerFile])
            VALUES
                (@UserId, @ConsType, @CerType, @CerFile);";

                var consultantParams = new Dictionary<string, object>
                {
                    { "@UserId", userId },
                    { "@ConsType", consType },
                    { "@CerType", cerType },
                    { "@CerFile", cerFile }
                };

                // Execute Consultants query
                SqlHelper.ExecuteCommand(consultantInsertSql, consultantParams);
            }

            // Success message or redirection
            lblValidation.Text = "تم حفظ البيانات بنجاح.";
            lblValidation.ForeColor = System.Drawing.Color.Green;
            lblValidation.Visible = true;
        }



    }
}