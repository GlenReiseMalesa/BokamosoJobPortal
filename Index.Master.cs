using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bokamoso_Job_Portal
{
    public partial class Index : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["loginID"] == null)
            {
                displayLoginbtn.InnerHtml = "<div class='customButton' style='background-color:#F0FFFF;color: black;'>LOGIN</div>";
            }
            else
            {
                displayLoginbtn.InnerHtml = "<div class='customButton' style='background-color:#D10000;'>Logout</div>";
            }

        }
    }
}