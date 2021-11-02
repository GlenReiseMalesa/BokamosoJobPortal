<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="JobPosterDashboard.aspx.cs" Inherits="Bokamoso_Job_Portal.JobPosterDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



<section class="jumbotron text-center" style="margin-top:5%;margin-bottom: 5%;">
    <div class="container">
        <h1 class="jumbotron-heading">POST A JOB</h1>

    </div>
</section>

<div class="container" style="width:70%;">
    <div class="row">
        <div class="col" >
            <div class="card">
                <div class="card-header  text-white" style="background-color:#00FFFF;"><i class="fa fa-user-circle"></i>  Fill In Your Information
                </div>
                <div class="card-body">
                    <form runat="server">
                        <div class="form-group">
                            <label for="name mb-5">Company Name</label>
                            <input type="text" class="form-control" runat="server" id="name" aria-describedby="emailHelp" placeholder="Company Name" required>
                        </div>

                        <div class="form-group" style="margin-top: 10px;">
                            <label for="name mb-5">Job Title</label>
                            <input type="text" class="form-control" runat="server" id="Text1" aria-describedby="emailHelp" placeholder="Job Title" required>
                        </div>
                        <div class="form-group" style="margin-top: 10px;">
                            <label for="name mb-5">Salary</label>
                            <input type="text" class="form-control" runat="server" id="Text2" aria-describedby="emailHelp" placeholder="Salary" required>
                        </div>

                         <div class="form-group" style="margin-top: 10px;">
                            <label for="name mb-5">Location</label>
                            <input type="text" class="form-control" runat="server" id="Text3" aria-describedby="emailHelp" placeholder="Location" required>
                        </div>


                        <div class="form-group"  style="margin-top: 10px;">
                            <label for="message">Job Description</label>
                            <textarea class="form-control" runat="server"  id="message" placeholder="Job description" rows="6" required></textarea>
                        </div>
                        <div class="mx-auto" style="margin-top: 10px;">
                        <asp:Button ID="submit8" runat="server" OnClick="post" Text="Post Job" class="btn  text-right" style="background-color:#00FFFF;color: whitesmoke;"></asp:Button></div>
                    </form>
                </div>
            </div>
        </div>
   
    </div>
</div>




</asp:Content>
