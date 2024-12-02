using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;

namespace BrightPath.Helpers
{
    public class EnumDatabaseVariables
    {
        public enum UserType
        {
            [Description("مدير")]
            Admin = 1,

            [Description("")]
            Consultants = 2,

            [Description("ولي أمر")]
            Parent = 3,

            [Description("طفل")]
            Chaild = 4
        }
    }
}