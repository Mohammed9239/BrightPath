using BrightPath.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static BrightPath.Helpers.EnumDatabaseVariables;

namespace BrightPath.Pages.Sections
{
    public partial class AddCard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                MainHelper.PopulateDropDownList(ddlSection, "Sections", "Id", "Name");

                int userId = Convert.ToInt32(Session["UserId"].ToString());
                var parameters = new Dictionary<string, object>
                {
                    { "@Id", userId }
                };
                MainHelper.PopulateDropDownList(ddlUser, "Users", "Id", "Name", "Id = @Id", parameters);

            }

        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Gather input data
                string cardName = txtCardName.Text;
                string m = ddlSection.SelectedValue;
                int sectionId = Convert.ToInt32(m);
                int chaildId = Convert.ToInt32(ddlUser.SelectedValue);
                int userId = Convert.ToInt32(Session["UserId"].ToString());
                DateTime dateNow = DateTime.Now;


                // Prepare file upload if there's a file selected
                string filePath = string.Empty;
                if (fuCardFile.HasFile)
                {
                    string fileName = fuCardFile.FileName;
                    filePath = Server.MapPath("~/Uploads/" + fileName);
                    fuCardFile.SaveAs(filePath); // Save the file to the server
                }

                // SQL query with parameters
                string sql = @"
            INSERT INTO [dbo].[Cards]
               ([Name]
               ,[FileUrl]
               ,[SectionId]
               ,[ChaildId]
               ,[CreatedBy]
               ,[CreatedDate])
OUTPUT INSERTED.ID
         VALUES
               (@Name
               ,@FileUrl
               ,@SectionId
               ,@ChaildId
               ,@CreatedBy
               ,@CreatedDate);";

                // Parameters for the SQL query
                var parameters = new Dictionary<string, object>
        {
            { "@Name", cardName },
            { "@FileUrl", filePath },
            { "@SectionId", sectionId },
            { "@ChaildId", chaildId },  // Assuming userId is the ChaildId for now
            { "@CreatedBy", userId },  // User who is creating this record
            { "@CreatedDate", dateNow }
        };

                // Execute and get the ID of the inserted record
                int newId = SqlHelper.ExecuteScalarAndGetId(sql, parameters);

                if (newId > 0)
                {
                    // Success: Show a success message
                    lblMessage.Text = "تم حفظ البيانات بنجاح.";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                    lblMessage.Visible = true;
                }
                else
                {
                    // Failure: Show an error message
                    lblMessage.Text = "حصل خطأ أثناء حفظ البيانات.";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    lblMessage.Visible = true;
                }
            }
        }


    }
}