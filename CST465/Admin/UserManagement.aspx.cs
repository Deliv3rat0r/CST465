using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace CST465.Admin
{
    public partial class UserManagement : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            LoadRoles();
        }

        protected void Page_Load(object sender, EventArgs e)
        {

            if(!User.IsInRole("Admins"))
            {
                Roles.AddUserToRole(User.Identity.Name, "Admins");
            }
           
        }

        public void LoadRoles()
        {
            uxRoles.Items.Clear();
            foreach (string item in Roles.GetAllRoles())
            {
                uxRoles.Items.Add(item);
            }
        }

        protected void btnAddRole_Click(object sender, EventArgs e)
        {
            if(!Roles.RoleExists(uxRoleName.Text))
            {
                Roles.CreateRole(uxRoleName.Text);
                LoadRoles();
            }
        }

        protected void btnDeleteRole_Click(object sender, EventArgs e)
        {
            if(uxRoles.SelectedValue != null)
            {
                Roles.DeleteRole(uxRoles.SelectedValue);
                LoadRoles();
            }
        }
    }
}