using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CST465
{
    public partial class MultipleChoiceQuestion : System.Web.UI.UserControl, ITestQuestion
    {
        public string QuestionText
        {
            get { return lblRadListAnswers.Text; }
            set { lblRadListAnswers.Text = value; }
        }

        public string Answer
        {
            get { return uxRadListAnswers.SelectedItem.Value; }
            set { uxRadListAnswers.SelectedItem.Value = value; }
        }

        public List<ListItem> Items;

        protected void Page_Init(object sender, EventArgs e)
        {
            if(Items != null)
            {
                foreach (ListItem item in Items)
                {
                    uxRadListAnswers.Items.Add(item);
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}