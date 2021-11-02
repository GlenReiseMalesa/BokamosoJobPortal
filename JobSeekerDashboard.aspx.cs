using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bokamoso_Job_Portal
{
    public partial class JobSeekerDashboard : System.Web.UI.Page
    {
        JobPortalBackend client = new JobPortalBackend();
        protected void Page_Load(object sender, EventArgs e)
        {

            var data = client.getUniquePersonAppliedJobs(Int32.Parse(Session["loginID"].ToString()));

            string display = "";

            foreach(JobPost row in data) {
                display += "<tr>";
                display += "<th scope='row' > "+row.CompanyName+" </th>";
                display += "<td>"+row.JobTitle+"</td>";
                display += "<td>"+row.Location+"</td>";
                display += "<td>"+row.Salary+"</td>";
                display += "</tr>";

            }

            displayYourJobs.InnerHtml = display;
        }
    }
}