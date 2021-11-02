<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Bokamoso_Job_Portal.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!-- login -->
<section class="vh-100" style="background-image: url('background.jpg');height: 100vh;background-repeat: no-repeat;background-size: 100% 100%;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card shadow-2-strong" style="border-radius: 1rem;background-color: rgba(100, 100, 100, 0.5);">
          <div class="card-body p-5 text-center">

            <h3 class="mb-5">Sign in</h3>
             <form runat="server">
            <div class="form-outline mb-4">
              <input type="email" runat="server" id="email" class="form-control form-control-lg" />
              <label class="form-label" for="typeEmailX-2">Email</label>
            </div>

            <div class="form-outline mb-4">
              <input type="password" runat="server" id="password" class="form-control form-control-lg" />
              <label class="form-label" for="typePasswordX-2">Password</label>
            </div>



            <asp:Button Text="Login" runat="server" OnClick="sign_in" class="btn btn-primary btn-lg btn-block" ID="submit1"></asp:Button>

            </form>


          </div>
        </div>
      </div>
    </div>
  </div>
</section>


</asp:Content>
