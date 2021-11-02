<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="JobSeeker.aspx.cs" Inherits="Bokamoso_Job_Portal.JobSeeker" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- main content-->

<section class="jumbotron text-center" style="margin-top:5%;margin-bottom: 5%;">
    <div class="container">
        <h1 class="jumbotron-heading">CREATE NEW ACCOUNT</h1>
        <p class="lead text-muted mb-0">We'll Never Share Your Details With Anyone Else !</p>
    </div>
</section>

<div class="container" style="width:70%;">
    <div class="row">
        <div class="col" >
            <div class="card">
                <div class="card-header  text-white" style="background-color:#0000FF;"><i class="fa fa-user-circle"></i>  Fill In Your Information
                </div>
                <div class="card-body">
                    <form runat="server">
                        <div class="form-group">
                            <label for="name mb-5">Full Name</label>
                            <input type="text" class="form-control" runat="server" id="name" aria-describedby="emailHelp" placeholder="Enter name" required>
                        </div>


                        <div class="form-group"  style="margin-top: 10px;">
                            <label for="email">Email address</label>
                            <input type="email" class="form-control" runat="server" id="email" aria-describedby="emailHelp" placeholder="Enter email" required>
                           
                        </div>

												<div class="form-group"  style="margin-top: 10px;">
												<label for="email">Gender</label>
												<select class="form-select" id="gender" runat="server" aria-label="Default select example">
												  <option value="Male">Male</option>
												  <option value="Female">Female</option>
												  <option value="Other">Other</option>
												</select>
												</div>

                        <div class="form-group"  style="margin-top: 10px;">
                            <label for="email">Date of birth</label>
                            <input type="date" class="form-control" runat="server" id="dob" aria-describedby="emailHelp" placeholder="Enter email" required>
                           
                        </div>



								    <div class="form-group"  style="margin-top: 10px;">
								    <label for="exampleInputPassword1" class="form-label">Password</label>
								    <input type="password" runat="server" placeholder="Password" class="form-control" id="exampleInputPassword1">
                           
                        </div>

                        <div class="form-group"  style="margin-top: 10px;">
                            <label for="message">Home Address</label>
                            <textarea class="form-control" runat="server" id="message" rows="6" required></textarea>
                        </div>
                        <div class="mx-auto" style="margin-top: 10px;">
                        <asp:Button  ID="submit6" runat="server" OnClick="reg" Text="Create Account" class="btn  text-right" style="background-color:#0000FF;color: whitesmoke;"></asp:Button>

                        </div>
                    </form>
                </div>
            </div>
        </div>
   
    </div>
</div>


</asp:Content>
