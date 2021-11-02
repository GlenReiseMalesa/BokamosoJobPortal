<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="SearchResults.aspx.cs" Inherits="Bokamoso_Job_Portal.SearchResults" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    
<!-- home main -->
<section class="jumbotron text-center" style="margin-top: 4%;margin-bottom: 4%;">
    <div class="container">
        <h1 class="jumbotron-heading">JOB SEARCH RESULTS</h1>
        <p class="lead text-muted mb-0" id="displayNumJobs" runat="server">




        </p>
    </div>
</section>


<ul class="list-group list-group-flush bg-light" id="displayJob" runat="server">







</ul>



</asp:Content>
