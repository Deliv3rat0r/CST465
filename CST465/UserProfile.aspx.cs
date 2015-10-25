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
            //error page checking
            //throw new Exception("Bad stuff happened");

            if(Session["ProfileData"] != null)
            {
                uxMultiView.ActiveViewIndex = 1;

                UserProfileBO upbo = (UserProfileBO)Session["ProfileData"];
                
                LitAge.Text = upbo.age;
                LitEmail.Text = upbo.email;
                LitFName.Text = upbo.fname;
                LitLName.Text = upbo.lname;
                LitPhone.Text = upbo.phone;
                LitStreet.Text = upbo.street;
                LitCity.Text = upbo.city;
                LitState.Text = upbo.state;
                LitZip.Text = upbo.zip;

                if (upbo.profpic != null)
                {
                    string base64String = null;
                    using (MemoryStream m = new MemoryStream(upbo.profpic))
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
            else
            {
                uxMultiView.ActiveViewIndex = 0;
                //uxPerson.Text = "There is no person";
            }
        }

        protected void uxSaveBtn_Click(object sender, EventArgs e)
        {
            if(Page.IsValid == true)
            {
                //setting up session object
                UserProfileBO upbo = new UserProfileBO();
                upbo.age = uxAge.Text;
                upbo.city = uxCity.Text;
                upbo.confemail = uxConfirmEmail.Text;
                upbo.email = uxEmail.Text;
                upbo.fname = uxFName.Text;
                upbo.lname = uxLName.Text;
                upbo.phone = uxPhone.Text;
                upbo.state = uxState.Text;
                upbo.street = uxStreet.Text;
                upbo.zip = uxZip.Text;

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
                    
                    //set buisness object profile pic to buffer
                    upbo.profpic = buffer;
                    //using (MemoryStream m = new MemoryStream(buffer))
                    //{
                    //    byte[] imageBytes = m.ToArray();
                    //    // Convert byte[] to Base64 String                    
                    //    base64String = Convert.ToBase64String(imageBytes);
                    //}
                    //if (!string.IsNullOrEmpty(base64String))
                    //{
                    //    uxImage.ImageUrl = "data:image/jpeg;base64," + base64String;
                    //}
                }

                Session["ProfileData"] = upbo;
                Response.Redirect("UserProfile.aspx");
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