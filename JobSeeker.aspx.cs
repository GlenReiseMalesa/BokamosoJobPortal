using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bokamoso_Job_Portal
{
    public partial class JobSeeker : System.Web.UI.Page
    {

        JobPortalBackend client = new JobPortalBackend();
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void reg(object sender, EventArgs e)
        {

            bool isRegistered = client.createAccount(name.Value, email.Value, gender.Value, dob.Value, exampleInputPassword1.Value, message.Value, "jobseeker");

            if(isRegistered == true)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Redirect("JobSeeker.aspx");
            }

        }
    }
}