using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace CST465
{
    public partial class UserProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void uxSaveBtn_Click(object sender, EventArgs e)
        {
            if(Page.IsValid == true)
            {
                //set active view to view 2
                uxMultiView.ActiveViewIndex = 1;

                //Add input information into the literals on view 2
                LitFName.Text = uxFName.Text;
                LitLName.Text = uxLName.Text;
                LitAge.Text = uxAge.Text;
                LitPhone.Text = uxPhone.Text;
                LitEmail.Text = uxEmail.Text;

                if (uxProfImg.HasFile)
                {
                    string base64String = null;
                    byte[] buffer = new byte[uxProfImg.PostedFile.ContentLength];
                    uxProfImg.PostedFile.InputStream.Read(buffer, 0, uxProfImg.PostedFile.ContentLength);
                    using (MemoryStream m = new MemoryStream(buffer))
                    {
                        byte[] imageBytes = m.ToArray();
                        // Convert byte[] to Base64 String                    
                        base64String = Convert.ToBase64String(imageBytes);
                    }
                    if (!string.IsNullOrEmpty(base64String))
                    {
                        uxImage.ImageUrl = "data:image/jpeg;base64," + base64String;
                    }
                }

            }
        }

        protected void CustImg_ServerValidate(object source, ServerValidateEventArgs args)
        {
            bool image_valid = false;
            String[] acceptedExtensions = new String[] {".jpg", ".png", ".gif"};
            
            foreach (String item in acceptedExtensions)
            {
                if(Path.GetExtension(args.Value) == item)
                {
                    image_valid = true;
                }
            }

            args.IsValid = image_valid;

        }
    }
}