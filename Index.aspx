﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Bokamoso_Job_Portal.Index1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!-- main content -->
<div class="bg-image" style="background-image: url('background.jpg');height: 75vh;background-repeat: no-repeat;background-size: 100% 100%;">



<!-- bg header -->
<section class="jumbotron text-center" style="color: whitesmoke;">
    <div class="container">
        <h1 class="jumbotron-heading">JOB SEARCH</h1>
        <p class="lead text-muted mb-0">Get The Job Of Your Dreams Todays !</p>
    </div>
</section>



<!-- search -->
<section class="jobsearch">
<div class="container">
<div class="row">
<div class="col-sm-12">
  <div class="content">
    
  <form>  
  <div class="input-group">
         <input type="email" class="form-control" placeholder="Search For A Job">
         <span class="input-group-btn">
         <button class="btn bg-dark" style="color:whitesmoke;" type="submit">SEARCH</button>
         </span>
      </div>
  </div>
  </form>
</div>
</div>
</div>
</section>

</div>






<!-- home main -->
<section class="jumbotron text-center" style="margin-top: 4%;margin-bottom: 4%;">
    <div class="container">
        <h1 class="jumbotron-heading">LATEST JOBS</h1>
        <p class="lead text-muted mb-0">Total - 100</p>
    </div>
</section>


<ul class="list-group list-group-flush bg-light">
  <li class="list-group-item">

      <div class="card">
        <div class="card-header">
          Company Name
        </div>
        <div class="card-body">
          <h5 class="card-title">Job Title</h5>
          <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
          <a href="#" class="btn btn-primary">Apply</a>
        </div>
      </div>

  </li>
  <li class="list-group-item">

      <div class="card">
        <div class="card-header">
          Company Name
        </div>
        <div class="card-body">
          <h5 class="card-title">Job Title</h5>
          <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
          <a href="#" class="btn btn-primary">Apply</a>
        </div>
      </div>

  </li>
  <li class="list-group-item">

      <div class="card">
        <div class="card-header">
          Company Name
        </div>
        <div class="card-body">
          <h5 class="card-title">Job Title</h5>
          <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
          <a href="#" class="btn btn-primary">Apply</a>
        </div>
      </div>


  </li>
  <li class="list-group-item">

      <div class="card">
        <div class="card-header">
          Company Name
        </div>
        <div class="card-body">
          <h5 class="card-title">Job Title</h5>
          <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
          <a href="#" class="btn btn-primary">Apply</a>
        </div>
      </div>
    
  </li>
  <li class="list-group-item">

      <div class="card">
        <div class="card-header">
          Company Name
        </div>
        <div class="card-body">
          <h5 class="card-title">Job Title</h5>
          <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
          <a href="#" class="btn btn-primary">Apply</a>
        </div>
      </div>


  </li>
</ul>





</asp:Content>
