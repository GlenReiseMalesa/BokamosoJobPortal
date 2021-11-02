using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bokamoso_Job_Portal
{
    public partial class Login : System.Web.UI.Page
    {
        JobPortalBackend client = new JobPortalBackend();
        protected void Page_Load(object sender, EventArgs e)
        {

            //if logged in you get logged out
            if(Session["loginID"] != null)
            {
                Session["loginID"] = null;
            }
        }

        protected void sign_in(object sender, EventArgs e)
        {
            Session["loginID"] = null;

            int loginID = client.SignedInID(email.Value,password.Value);
            
            if(loginID != -1)
            {
                //you're logged in
                Session["loginID"] = loginID;
                Response.Redirect("Index.aspx");
            }

        }
    }
}