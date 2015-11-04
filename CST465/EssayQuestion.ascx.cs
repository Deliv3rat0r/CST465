using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CST465
{
    public partial class EssayQuestion : System.Web.UI.UserControl, ITestQuestion
    {
        public string QuestionText
        {
            get { return lblQuestion.Text; }
            set { lblQuestion.Text = value; }
        }

        public string Answer
        {
            get { return uxQuestionBox.Text; }
            set { value = uxQuestionBox.Text; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}