using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CST465
{
    [DefaultProperty("Text")]
    [ToolboxData("<{0}:ShortTextQuestion runat=server></{0}:ShortTextQuestion>")]
    public class ShortTextQuestion : CompositeControl, ITestQuestion //WebControl
    {
        //Setup interface strings
        public string QuestionText { get; set; }
        public string Answer { get { return uxChildBox.Text; } set { uxChildBox.Text = value; } }

        //Setup objects to be added to controls
        Label lblChildBox;
        TextBox uxChildBox;
        RequiredFieldValidator reqChildBox;


        //Here by default
        [Bindable(true)]
        [Category("Appearance")]
        [DefaultValue("")]
        [Localizable(true)]
        public string Text
        {
            get
            {
                String s = (String)ViewState["Text"];
                return ((s == null) ? String.Empty : s);
            }

            set
            {
                ViewState["Text"] = value;
            }
        }

        //Override child controls to add to our created controls
        protected override void CreateChildControls()
        {
            base.CreateChildControls();

            lblChildBox = new Label();
            lblChildBox.AssociatedControlID = "uxChildBox";
            lblChildBox.ID = "lblChildBox";
            lblChildBox.Text = QuestionText;

            uxChildBox = new TextBox();
            uxChildBox.ID = "uxChildBox";

            reqChildBox = new RequiredFieldValidator();
            reqChildBox.ID = "reqChildBox";
            reqChildBox.ControlToValidate = "uxChildBox";
            reqChildBox.ErrorMessage = "Textbox left blank";
            reqChildBox.Display = ValidatorDisplay.Dynamic;
            reqChildBox.Text = "*";

            Controls.Add(lblChildBox);
            Controls.Add(uxChildBox);
            Controls.Add(reqChildBox);
                        
        }

        //Here by default
        //protected override void RenderContents(HtmlTextWriter output)
        //{
        //    output.Write(Text);
        //}
    }
}
