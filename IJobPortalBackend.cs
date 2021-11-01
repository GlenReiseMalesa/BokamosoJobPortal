using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace Bokamoso_Job_Portal
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IJobPortalBackend" in both code and config file together.
    [ServiceContract]
    public interface IJobPortalBackend
    {
        [OperationContract]
        bool createAccount(string FullName,string EmailAddress,string Gender,string DOB,string Password,string HomeAddress,string Type);

        [OperationContract]
        bool createJobPost(string CompanyName, string JobTitle,string JobDescription, string Location, string Salary);

        [OperationContract]
        bool addPersonApplied(int PersonID,int JobID);

        [OperationContract]
        bool denyJobRequest(int id);

        [OperationContract]
        List<JobPost> jobPosts();





    }
}
