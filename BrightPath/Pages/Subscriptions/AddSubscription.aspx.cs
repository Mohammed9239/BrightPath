using BrightPath.Helpers;
using BrightPath.Pages.Sections;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static BrightPath.Helpers.EnumDatabaseVariables;

namespace BrightPath.Pages.Subscriptions
{
    public partial class AddSubscription : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


                var parameters = new Dictionary<string, object>
                {
                    { "@GroupId", 1001 }
                };
                MainHelper.PopulateDropDownList(ddlSubscriptionType, "Constraints", "Id", "Name", "GroupId = @GroupId", parameters);


                parameters = new Dictionary<string, object>
                {
                    { "@UserType", (int)UserType.Chaild }
                };
                MainHelper.PopulateDropDownList(ddlUser, "Users", "Id", "Name", "UserType = @UserType", parameters);

            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Gather input data
                int typeId = Convert.ToInt32(ddlSubscriptionType.SelectedValue);
                int chaildId = Convert.ToInt32(ddlUser.SelectedValue);
                decimal price = Convert.ToDecimal(txtSubscriptionPrice.Text);
                DateTime startDate = Convert.ToDateTime(txtStartDate.Text); ;
                DateTime expiryDate = Convert.ToDateTime(txtEndDate.Text);
                int createdBy = Convert.ToInt32(Session["UserId"].ToString());
                DateTime createdDate = DateTime.Now;

                // SQL query with parameters
                string sql = @"
                            INSERT INTO [dbo].[Subscriptions]
                                ([Type]
                                ,[ChaildId]
                                ,[Price]
                                ,[StartDate]
                                ,[ExpiryDate]
                                ,[CreatedBy]
                                ,[CreatedDate])
                            OUTPUT INSERTED.ID
                            VALUES
                                (@Type
                                ,@ChaildId
                                ,@Price
                                ,@StartDate
                                ,@ExpiryDate
                                ,@CreatedBy
                                ,@CreatedDate);";

                // Parameters for the SQL query
                var parameters = new Dictionary<string, object>
                {
                    { "@Type", typeId },
                    { "@ChaildId", chaildId },
                    { "@Price", price },
                    { "@StartDate", startDate },
                    { "@ExpiryDate", expiryDate },
                    { "@CreatedBy", createdBy },
                    { "@CreatedDate", createdDate }
                };

                // Execute the query
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