using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace Bokamoso_Job_Portal
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "JobPortalBackend" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select JobPortalBackend.svc or JobPortalBackend.svc.cs at the Solution Explorer and start debugging.
    public class JobPortalBackend : IJobPortalBackend
    {
        public bool addPersonApplied(int PersonID, int JobID)
        {
            throw new NotImplementedException();
        }

        public bool createAccount(string FullName, string EmailAddress, string Gender, string DOB, string Password, string HomeAddress, string Type)
        {
            throw new NotImplementedException();
        }

        public bool createJobPost(string CompanyName, string JobTitle, string JobDescription, string Location, string Salary)
        {
            throw new NotImplementedException();
        }

        public bool denyJobRequest(int id)
        {
            throw new NotImplementedException();
        }

        public List<JobPost> jobPosts()
        {
            throw new NotImplementedException();
        }
    }
}
