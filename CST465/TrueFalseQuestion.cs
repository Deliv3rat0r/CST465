﻿using System;
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
    [ToolboxData("<{0}:TrueFalseQuestion runat=server></{0}:TrueFalseQuestion>")]
    public class TrueFalseQuestion : CompositeControl, ITestQuestion //WebControl
    {
        //setup interface strings
        public string QuestionText { get; set; }
        public string Answer { get { return uxTFQuestion.SelectedItem.Value; } set { uxTFQuestion.SelectedItem.Value = value; } }

        //Setup the objects to be added to controls
        protected Label lblTFQuestion;
        protected RadioButtonList uxTFQuestion;
        protected RequiredFieldValidator reqTFQuestion;

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
       
        //Override the Create Child Controls event
        protected override void CreateChildControls()
        {
            base.CreateChildControls();

            //label for radio button list
            lblTFQuestion = new Label();
            lblTFQuestion.ID = "lblTFQuestion";
            lblTFQuestion.AssociatedControlID = "uxTFQuestion";
            lblTFQuestion.Text = QuestionText;

            //create radio button list
            uxTFQuestion = new RadioButtonList();
            uxTFQuestion.ID = "uxTFQuestion";

            //create validation for radio button list
            reqTFQuestion = new RequiredFieldValidator();
            reqTFQuestion.ID = "reqTFQuestion";
            reqTFQuestion.Display = ValidatorDisplay.Dynamic;
            reqTFQuestion.Text = "*";
            reqTFQuestion.ControlToValidate = "uxTFQuestion";
            reqTFQuestion.ErrorMessage = "No radio selection";

            //create and add list items true and false
            ListItem listTrue = new ListItem("true", "true");
            ListItem listFalse = new ListItem("False", "False");
            uxTFQuestion.Items.Add(listTrue);
            uxTFQuestion.Items.Add(listFalse);

            //add label, radio button list and validator to controls
            Controls.Add(lblTFQuestion);
            Controls.Add(uxTFQuestion);
            Controls.Add(reqTFQuestion);
        }

        //protected override void RenderContents(HtmlTextWriter output)
        //{
        //    output.Write(Text);
        //}
    }
}
