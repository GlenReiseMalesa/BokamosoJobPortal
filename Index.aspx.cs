using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bokamoso_Job_Portal
{
    public partial class Index1 : System.Web.UI.Page
    {
        JobPortalBackend client = new JobPortalBackend();
        protected void Page_Load(object sender, EventArgs e)
        {

            var jobs = client.jobPosts();

            string display = "";

            int numJobs = 0;

            foreach (JobPost row in jobs) {

                numJobs += 1;


                display += "<li class='list-group-item'>";
                display += "<div class='card'>";
                display += "<div class='card-header'>";
                display += row.CompanyName.ToUpper();
                display += "</div>";
                display += "<div class='card-body'>";
                display += "<h4 class='card-title'>"+row.JobTitle.ToUpper()+"</h4>";
                display += "<p class='card-text'><h6 class='text-muted'>Location : "+row.Location+"</h6></p>";   
                display += "<p class='card-text'>"+row.JobDescription+"</p>";
                display += "<p class='card-text'><h5 class='text-muted'>Salary : R"+row.Salary+"</h5></p>";
                display += "<a href ='PersonHasApplied.aspx?appliedID="+row.Id+"' class='btn btn-primary'>Apply</a>";
                display += "</div>";
                display += "</div>";
                display += "</li>";

            }

            displayNumJobs.InnerHtml = "Total - "+ numJobs+" Jobs Available";
            displayJob.InnerHtml = display;

        }



        protected void Search(object sender, EventArgs e)
        {
            Response.Redirect("SearchResults.aspx?query="+search.Value);
        }


  }
}