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
        //Setup Interface strings
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

        //set a list of list items to iterate through to form our possible answers
        public List<ListItem> Items { get; set; }

        protected void Page_Init(object sender, EventArgs e)
        {
            //If items is not null, add answers to the radial button list
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