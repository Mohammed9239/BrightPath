using BrightPath.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BrightPath.Pages.Home
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string selectSql = "SELECT empnma FROM empmas WHERE empcode = @empcode";
            var parametersForSelect = new Dictionary<string, object>
        {
            { "@empcode", 128 }
        };

            string name = SqlHelper.SelectField(selectSql, parametersForSelect);
        }
    }
}