using BrightPath.Helpers;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BrightPath.Pages.Sections
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Fetch all sections and bind to the repeater
                DataTable sections = GetAllSections();
                rptSections.DataSource = sections;
                rptSections.DataBind();
            }
        }


        public static DataTable GetAllSections()
        {
            string sql = @"
            SELECT 
                S.Id, 
                S.Name, 
                C.Name as TypeDescription
            FROM [dbo].[Sections] S
            LEFT JOIN [dbo].[Constraints] C ON S.Type = C.Id AND GroupId = 1000";

            return SqlHelper.ReadData(sql);
        }
    }
}