using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bokamoso_Job_Portal
{
    public partial class PersonHasApplied : System.Web.UI.Page
    {
        JobPortalBackend client = new JobPortalBackend();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["loginID"] != null) {
                int jobId = Int32.Parse(Request.QueryString["appliedID"]);
                int personId = Int32.Parse(Session["loginID"].ToString());

                bool hasApplied = client.addPersonApplied(personId, jobId);

                Response.Redirect("JobSeekerDashboard.aspx");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}