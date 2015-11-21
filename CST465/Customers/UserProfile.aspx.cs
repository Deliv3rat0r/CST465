using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Web.Security;
using CST465.code;

namespace CST465
{
    public partial class UserProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //error page checking
            //throw new Exception("Bad stuff happened");

            //Test Trace write for testing purposes
            Trace.Write("Your message to be written to the trace log");

            //if (Session["ProfileData"] != null)
            //{
                uxMultiView.ActiveViewIndex = 1;

                //get guid for user
                MembershipUser usr = Membership.GetUser();
                Guid uid = (Guid)usr.ProviderUserKey;




            //UserProfileBO upbo = (UserProfileBO)Session["ProfileData"];
            UserProfileBO upbo = UserProfileRepo.getProfile(uid);

            Session["ProfileData"] = upbo;
                
                LitAge.Text = upbo.age.ToString();
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

            //}
            //    else
            //    {
            //        uxMultiView.ActiveViewIndex = 0;
            //        //uxPerson.Text = "There is no person";
            //    }
}

        protected void uxSaveBtn_Click(object sender, EventArgs e)
        {
            if(Page.IsValid == true)
            {
                //get guid for user
                MembershipUser usr = Membership.GetUser();
                Guid uid = (Guid)usr.ProviderUserKey;


                //setting up session object
                UserProfileBO upbo = new UserProfileBO();
                upbo.age = Int32.Parse(uxAge.Text);
                upbo.city = uxCity.Text;
                upbo.confemail = uxConfirmEmail.Text;
                upbo.email = uxEmail.Text;
                upbo.fname = uxFName.Text;
                upbo.lname = uxLName.Text;
                upbo.phone = uxPhone.Text;
                upbo.state = uxState.Text;
                upbo.street = uxStreet.Text;
                upbo.zip = uxZip.Text;
                upbo.UserID = uid;

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

                //save in session
                Session["ProfileData"] = upbo;

                //save in databse
                UserProfileRepo.saveProfile(upbo);

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

        protected void uxEditProfile_Click(object sender, EventArgs e)
        {
            uxMultiView.ActiveViewIndex = 0;

            if (Session["ProfileData"] != null)
            {
                UserProfileBO upbo = (UserProfileBO)Session["ProfileData"];

                uxFName.Text = upbo.fname;
                uxAge.Text = upbo.age.ToString();
                uxCity.Text = upbo.city;
                uxConfirmEmail.Text = upbo.confemail;
                uxEmail.Text = upbo.email;
                uxLName.Text = upbo.lname;
                uxPhone.Text = upbo.phone;
                uxStreet.Text = upbo.street;
                uxZip.Text = upbo.zip;
            }

        }
    }
}