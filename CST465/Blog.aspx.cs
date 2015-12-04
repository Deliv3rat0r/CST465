using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;

namespace CST465
{
    public partial class Blog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Page_Init(object sender, EventArgs e)
        {
            if(Page.User.Identity.IsAuthenticated)
            {
                MembershipUser user = Membership.GetUser();
                uxBlogSql.InsertParameters.Add(new Parameter("Author", DbType.Guid, ((Guid)user.ProviderUserKey).ToString()));
            }
        }
    }
}