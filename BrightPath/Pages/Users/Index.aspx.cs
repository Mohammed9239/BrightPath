using BrightPath.Helpers;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BrightPath.Pages.Users
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Fetch all users and bind to the repeater
                DataTable users = GetAllUsers();
                rptUsers.DataSource = users;
                rptUsers.DataBind();
            }
        }


        public static DataTable GetAllUsers()
        {
            string sql = @"
        SELECT 
            Id, UserName, Name, 
            CASE 
                WHEN UserType = 1 THEN N'مدير' 
                WHEN UserType = 2 THEN N'مستشار' 
                WHEN UserType = 3 THEN N'ولي امر' 
                WHEN UserType = 4 THEN N'طفل' 
                ELSE N'' 
            END AS UserTypeDescription
        FROM [dbo].[Users]";

            var dt = SqlHelper.ReadData(sql);
            return dt;
        }


    }
}