using BrightPath.Helpers;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BrightPath.Pages.Subscriptions
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Fetch all subscriptions and bind to the repeater
                DataTable subscriptions = GetAllSubscriptions();
                rptSubscriptions.DataSource = subscriptions;
                rptSubscriptions.DataBind();
            }
        }


        public static DataTable GetAllSubscriptions()
        {
            string sql = @"
                        SELECT 
                            S.Id,
                            C.Name as SubscriptionName,
                            S.Price,
                            U.Name AS UserName,
                            S.StartDate,
                            S.ExpiryDate
                        FROM [dbo].[Subscriptions] S
                        LEFT JOIN [dbo].[Constraints] C ON S.Type = C.Id AND GroupId = 1001
                        LEFT JOIN [dbo].[Users] U ON S.ChaildId = U.Id";


            return SqlHelper.ReadData(sql);
        }
    }
}