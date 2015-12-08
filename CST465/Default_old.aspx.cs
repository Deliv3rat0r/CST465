using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CST465
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                uxEventOutput.Text += "PostBack <br />";
        }

        protected override void OnInitComplete(EventArgs e)
        {
            base.OnInitComplete(e);
            uxEventOutput.Text += "Init <br />";
        }

        protected override void OnLoadComplete(EventArgs e)
        {
            base.OnLoadComplete(e);
            uxEventOutput.Text += "Loaded <br />";
        }

        protected override void OnPreRenderComplete(EventArgs e)
        {
            base.OnPreRenderComplete(e);
            uxEventOutput.Text += "Render <br />";
        }

        protected void uxSubmit_Click(object sender, EventArgs e)
        {
            uxEventOutput.Text += "Name: " + uxName.Text + 
                                    "<br /> User Type: " + uxUserType +
                                    "<br /> Hobby: " + uxHobby.Text +
                                    "<br /> Band: " + uxBand.Text +
                                    "<br /> Biography: " + uxBiography +
                                    "<br /> Course: " + uxCoursePrefix.Text + "-" + uxCourseNumber.Text + ": " + uxCourseDescription.Text;
        }
        
    }
}