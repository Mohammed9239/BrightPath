using BrightPath.Helpers;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using static BrightPath.Helpers.EnumDatabaseVariables;

namespace BrightPath.Pages.Shared
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] == null)
            {
                Response.Redirect("~/Pages/Home/Login.aspx");
            }

            else
            {

                int userId = int.Parse(Session["UserId"].ToString());

                // SQL query to select name based on userId
                string sql = "SELECT name, userType FROM Users WHERE Id = @Id";
                var parameters = new Dictionary<string, object> { { "@Id", userId } };

                // Execute the query to fetch user details
                var data = SqlHelper.SelectRow(sql, parameters);
                if(data!= null)
                {
                    txName.InnerText = data["name"].ToString();

                    int userType = Convert.ToInt32(data["userType"].ToString());


                    if(userType == (int)UserType.Consultants)
                    {
                        Subscriptions.Visible = false;
                        Users.Visible = false;

                    }


                    if (userType == (int)UserType.Parent)
                    {
                        Sections.Visible = false;
                        Subscriptions.Visible = false;
                        Reports.Visible = false;
                        Users.Visible = false;

                    }

                    if (userType == (int)UserType.Chaild)
                    {
                        Sections.Visible = false;
                        Subscriptions.Visible = false;
                        Reports.Visible = false;
                        Users.Visible = false;

                    }
                }




            }
        }
    }
}