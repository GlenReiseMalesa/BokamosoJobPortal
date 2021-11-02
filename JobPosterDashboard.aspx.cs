using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bokamoso_Job_Portal
{
    public partial class JobPosterDashboard : System.Web.UI.Page
    {
        JobPortalBackend client = new JobPortalBackend();
        protected void Page_Load(object sender, EventArgs e)
        {




        }

        protected void post(object sender, EventArgs e)
        {
            bool isPosted = client.createJobPost(name.Value, Text1.Value, message.Value, Text3.Value,Decimal.Parse(Text2.Value));

            if(isPosted == true)
            {
                Response.Redirect("Index.aspx");
            }
            else
            {
                Response.Redirect("JobPosterDashboard.aspx");
            }
        }
    }
}