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
        JobPortalLinkDataContext db = new JobPortalLinkDataContext();
        public bool addPersonApplied(int PersonID, int JobID)
        {
            var newPersonApplied = new PersonApplied
            {
                PersonID = PersonID,
                JobID = JobID
            };

            db.PersonApplieds.InsertOnSubmit(newPersonApplied);


            try
            {

                db.SubmitChanges();
                return true;
            }
            catch (Exception e)
            {
                e.GetBaseException();
                return false;
            }
        }

        public bool createAccount(string FullName, string EmailAddress, string Gender, string DOB, string Password, string HomeAddress, string Type)
        {
            var newPerson = new Person
            {
               FullName = FullName,
               EmailAddress = EmailAddress,
               Gender = Gender,
               DOB = DOB,
               Password = Password,
               HomeAddress = HomeAddress,
               Type = Type

            };

            db.Persons.InsertOnSubmit(newPerson);


            try
            {

                db.SubmitChanges();
                return true;
            }
            catch (Exception e)
            {
                e.GetBaseException();
                return false;
            }
        }








        public bool createJobPost(string CompanyName, string JobTitle, string JobDescription, string Location, decimal Salary)
        {
            var newJobPost = new JobPost
            {
               CompanyName = CompanyName,
               JobTitle = JobTitle,
               JobDescription = JobDescription,
               Location = Location,
               Salary = Salary
            };

            db.JobPosts.InsertOnSubmit(newJobPost);


            try
            {

                db.SubmitChanges();
                return true;
            }
            catch (Exception e)
            {
                e.GetBaseException();
                return false;
            }
        }

        public bool denyJobRequest(int id)
        {
            dynamic data = (from m in db.PersonApplieds where m.Id == id select m);

            foreach (PersonApplied row in data)
            {
                if (row != null)
                {
                    db.PersonApplieds.DeleteOnSubmit(row);
                }
            }

            try
            {
                db.SubmitChanges();
                return true;
            }
            catch (Exception e)
            {
                e.GetBaseException();
                return false;
            }
        }

        public string getAccountType(int id)
        {
           
            string type = "";

            dynamic user = (from m in db.Persons where m.Id.Equals(id)  select m).FirstOrDefault();

            var person = new Person
            {
                Type = user.Type,
            };

            type = person.Type;

            return type;
        }

        public List<JobPost> getUniquePersonAppliedJobs(int id)
        {
            var JobPosts = new List<JobPost>();
            dynamic personApplied = (from m in db.PersonApplieds where m.PersonID.Equals(id) select m);

            foreach (PersonApplied row in personApplied)
            {
                int jobId = row.JobID;
                dynamic job = (from m in db.JobPosts where m.Id.Equals(jobId) select m);

                foreach (JobPost r in job)
                {
                    if (r != null)
                    {
                        JobPosts.Add(r);
                    }
                }
            }

            return JobPosts;
        }



        public List<JobPost> jobPosts()
        {
            var JobPosts = new List<JobPost>();

            dynamic data = (from m in db.JobPosts select m);

            foreach (JobPost row in data)
            {
                JobPosts.Add(row);
            }

            return JobPosts;
        }

        public int SignedInID(string EmailAddress, string Password)
        {

            //returns an id as you log in
            int id = -1;
                
                dynamic user = (from m in db.Persons where m.EmailAddress.Equals(EmailAddress) && m.Password.Equals(Password) select m).FirstOrDefault();
                
                var person = new Person
                {
                  
                    Id = user.Id,
                };

                id = person.Id;

                return id;
           
        }
    }
}
