using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CST465
{
    public partial class Results : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["QuestionAnswers"] != null)
            {
                List<QuestionAnswer> questionList = (List<QuestionAnswer>)Session["QuestionAnswers"];
                uxRepeatQA.DataSource = questionList;
                uxRepeatQA.DataBind();
            }
            else
            {

            }
        }
    }
}