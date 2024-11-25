using BrightPath.Helpers;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
                string sql = "SELECT name FROM Users WHERE Id = @Id";
                var parameters = new Dictionary<string, object> { { "@Id", userId } };

                // Execute the query to fetch user details
                string name = SqlHelper.SelectField(sql, parameters);
                txName.InnerText = name;
            }
        }
    }
}