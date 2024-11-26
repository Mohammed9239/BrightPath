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
    public partial class SectionDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sectionId = Request.QueryString["id"];
                if (!string.IsNullOrEmpty(sectionId))
                {
                    // Fetch section details
                    DataTable sectionDetails = GetSectionById(sectionId);

                    if (sectionDetails.Rows.Count > 0)
                    {
                        DataRow row = sectionDetails.Rows[0];

                        // Bind data to section controls
                        txtSectionName.Text = row["Name"].ToString();
                        ddlSectionType.SelectedValue = row["Type"].ToString();
                    }

                    // Fetch and bind cards for the section
                    DataTable cards = GetCardsBySectionId(sectionId);
                    rptCards.DataSource = cards;
                    rptCards.DataBind();
                }
            }
        }



        private DataTable GetSectionById(string sectionId)
        {
            string sql = @"
                SELECT 
                    Id, 
                    Name, 
                    Type, 
                    CASE 
                        WHEN Type = 1 THEN N'إداري' 
                        WHEN Type = 2 THEN N'تعليمي' 
                        ELSE N'غير محدد'
                    END AS TypeDescription
                FROM [dbo].[Sections]
                WHERE Id = @Id";

            var parameters = new Dictionary<string, object>
            {
                { "@Id", sectionId }
            };

            return SqlHelper.ReadData(sql, parameters);
        }


        private DataTable GetCardsBySectionId(string sectionId)
        {
            string sql = @"
                SELECT 
                    c.Name AS CardName,
                    u.UserName AS UserName
                FROM [dbo].[Cards] c
                JOIN [dbo].[Users] u ON c.ChaildId = u.Id
                WHERE c.SectionId = @SectionId";

            var parameters = new Dictionary<string, object>
            {
                { "@SectionId", sectionId }
            };

            return SqlHelper.ReadData(sql, parameters);
        }


    }
}