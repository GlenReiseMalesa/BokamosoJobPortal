using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bokamoso_Job_Portal
{
    public partial class ChooseAccountManager : System.Web.UI.Page
    {
        JobPortalBackend client = new JobPortalBackend();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["loginID"] != null)
            {
                //if you're logged in then go to you account management dashboard
                string type = client.getAccountType(Int32.Parse(Session["loginID"].ToString()));

                if (type.Equals("jobseeker"))
                {
                    Response.Redirect("JobSeekerDashboard.aspx");
                }else if(type.Equals("jobposter"))
                {
                    Response.Redirect("JobPosterDashboard.aspx");
                }
            }
            else
            {
                Response.Redirect("Index.aspx");
            }

        }
    }
}