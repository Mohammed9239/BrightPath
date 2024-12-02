using BrightPath.Helpers;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BrightPath.Pages.Home
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;

            // SQL query to select user based on username
            string sql = "SELECT Id, UserName, Password FROM Users WHERE UserName = @UserName";
            var parameters = new Dictionary<string, object> { { "@UserName", username } };

            // Execute the query to fetch user details
            DataRow userRow = SqlHelper.SelectRow(sql, parameters);

            if (userRow != null)
            {
                string storedPassword = userRow["Password"].ToString();
                int userId = Convert.ToInt32(userRow["Id"]);


                // Compare the entered password with the decrypted password
                if (storedPassword.Equals(password, StringComparison.Ordinal))
                {
                    // Successful login: Store user ID in session
                    Session["UserId"] = userId;

                    // Set session timeout to 15 minutes
                    Session.Timeout = 15;

                    // Redirect to the Dashboard
                    Response.Redirect("Dashboard.aspx");
                }
                else
                {
                    // Incorrect password, show error message
                    lblValidation.Text = "كلمة المرور غير صحيحة.";
                    lblValidation.Visible = true;
                }
            }
            else
            {
                // Username does not exist
                lblValidation.Text = "اسم المستخدم غير موجود.";
                lblValidation.Visible = true;
            }
        }

    }
}