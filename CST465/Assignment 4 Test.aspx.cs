using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CST465
{
    public partial class Assignment_4_Test : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            uxTrueFalseQuestion.QuestionText = "This works";
            uxShortAnswerQuestion.QuestionText = "What class is this assignment for?";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void uxBtnSubmit_Click(object sender, EventArgs e)
        {
            litOutput.Text = "<strong>" + uxEssayQuestion.QuestionText + "</strong><br />" + uxEssayQuestion.Answer + "<br /><br />";
            litOutput.Text += "<strong>" + uxMultiChoiceQuestion.QuestionText + "</strong><br />" + uxMultiChoiceQuestion.Answer + "<br /><br />";
            litOutput.Text += "<strong>" + uxTrueFalseQuestion.QuestionText + "</strong><br />" + uxTrueFalseQuestion.Answer + "<br /><br />";
            litOutput.Text += "<strong>" + uxShortAnswerQuestion.QuestionText + "</strong><br />" + uxShortAnswerQuestion.Answer + "<br /><br />";
        }
    }
}