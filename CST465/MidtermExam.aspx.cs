using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CST465
{
    public partial class MidtermExam : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            //True/False questions
            uxTFQ1.QuestionText = "HTTP is a stateless protocol";
            uxTFQ2.QuestionText = "SessionState can be transferred between pages";
            uxTFQ3.QuestionText = "Sanitizing database inputs is only important for sites handling sensitive information";
            uxTFQ4.QuestionText = "ViewState can be transferred between pages";
            uxTFQ5.QuestionText = "Cookies can be transferred between pages";
            uxTFQ6.QuestionText = "It is a good practice to use inline CSS styles";
            uxTFQ7.QuestionText = "All controls in ASP.NET support DataBinding";
            uxTFQ8.QuestionText = "Browsers must support ASP.NET in order to display pages created with it";
            uxTFQ9.QuestionText = "When a MasterPage is used, a page wraps its own content with the MasterPages’s content";
            uxTFQ10.QuestionText = "&ltdeny&gt authorization rules in the web.config are processed first regardless of the way the rules are ordered";

            //Short answer questions
            uxShortQ1.QuestionText = "The line of text that tells a SqlDataSource how to connect to the database is called a ";
            uxShortQ2.QuestionText = "When a WebForms page performs a POST operation to itself, it is referred to as a ";
            uxShortQ3.QuestionText = "The term for loading a controls data from a data source is ";
            uxShortQ4.QuestionText = "An example of a block element is ";
            uxShortQ5.QuestionText = "An example of an inline element is ";
            uxShortQ6.QuestionText = "What is the name of the file that stores configuration information for a web site? ";
            uxShortQ7.QuestionText = "A div with the following CSS will have what computed height and width? { margin: 0 0 5px; padding: 5px 10px; height: 100px; width: 50px;  border-left: solid 3px #0c0; } ";
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void uxSubmitbtn_Click(object sender, EventArgs e)
        {
            //create list for storing questions and answers
            List<QuestionAnswer> questionList = new List<QuestionAnswer>();

            //populate list with all questions and answers on the page
            foreach (Control c in uxQuestions.Controls)
            {
                if(c is ITestQuestion)
                {
                    ITestQuestion question = c as ITestQuestion;
                    QuestionAnswer qa = new QuestionAnswer();
                    qa.QuestionText = question.QuestionText;
                    qa.Answer = question.Answer;
                    questionList.Add(qa);
                }
            }

            //Save list to session
            Session["QuestionAnswers"] = questionList;

            //redirect to results page
            Response.Redirect("Results.aspx");
        }
    }
}