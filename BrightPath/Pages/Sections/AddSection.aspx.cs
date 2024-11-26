using BrightPath.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BrightPath.Pages.Sections
{
    public partial class AddSection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Gather input data
                string departmentName = txtDepartmentName.Text.Trim();
                int departmentType = int.Parse(ddlDepartmentType.SelectedValue);
                int userId = Convert.ToInt32(Session["UserId"].ToString());
                DateTime dateNow = DateTime.Now;

                // SQL query
                string sql = @"
                    INSERT INTO [dbo].[Sections] ([Name], [Type], [CreatedBy], [CreatedDate])
                    OUTPUT INSERTED.ID
                    VALUES (@Name, @Type, @CreatedBy, @CreatedDate);";

                // Parameters
                var parameters = new Dictionary<string, object>
                {
                    { "@Name", departmentName },
                    { "@Type", departmentType },
                    { "@CreatedBy", userId },
                    { "@CreatedDate", dateNow }
                };

                // Execute and get the ID of the inserted record
                int newId = SqlHelper.ExecuteScalarAndGetId(sql, parameters);

                if (newId > 0)
                {
                    // Success: Handle success logic (e.g., display success message, clear inputs, redirect)
                    lblMessage.Text = "تم حفظ البيانات بنجاح.";
                    lblMessage.ForeColor = System.Drawing.Color.Green;

                    lblMessage.Visible = true;
                }
                else
                {
                    // Failure: Handle error logic
                    lblMessage.Text = "حصل خطاء";
                    lblMessage.ForeColor = System.Drawing.Color.Red;

                    lblMessage.Visible = true;
                }
            }
        }

    }
}