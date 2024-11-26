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
                Id, 
                Name, 
                CASE 
                    WHEN Type = 1 THEN N'قسم 1'
                    WHEN Type = 2 THEN N'قسم 2'
                    ELSE N'غير محدد'
                END AS TypeDescription
            FROM [dbo].[Sections]";

            return SqlHelper.ReadData(sql);
        }
    }
}