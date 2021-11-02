<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="JobSeekerDashboard.aspx.cs" Inherits="Bokamoso_Job_Portal.JobSeekerDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<section class="jumbotron text-center" style="margin-top:5%;margin-bottom: 5%;">
    <div class="container">
        <h1 class="jumbotron-heading">JOBS YOU APPLIED FOR</h1>

    </div>
</section>


<table class="table">
  <thead>
    <tr>
      <th scope="col">Company Name</th>
      <th scope="col">Job Title</th>
      <th scope="col">Location</th>
      <th scope="col">Salary</th>
    </tr>
  </thead>
  <tbody runat="server" id="displayYourJobs">




  </tbody>
</table>
</asp:Content>
