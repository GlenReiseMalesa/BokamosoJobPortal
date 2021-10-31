<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Bokamoso_Job_Portal.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container" style="width:70%;margin-top: 5%;margin-bottom: 5%;">
    <div class="row">
        <div class="col" >
            <div class="card" style="background-color: rgba(100, 100, 100, 0.5);">
                <div class="card-header bg-dark text-white"><i class="fa fa-envelope"></i> Contact us.
                </div>
                <div class="card-body">
                    <form>
                        <div class="form-group">
                            <label for="name mb-5">Name</label>
                            <input type="text" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter name" required>
                        </div>
                        <div class="form-group"  style="margin-top: 10px;">
                            <label for="email">Email address</label>
                            <input type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email" required>
                           
                        </div>
                        <div class="form-group"  style="margin-top: 10px;">
                            <label for="message">Message</label>
                            <textarea class="form-control" id="message" rows="6" required></textarea>
                        </div>
                        <div class="mx-auto" style="margin-top: 10px;">
                        <button type="submit" class="btn btn-dark text-right">Send</button></div>
                    </form>
                </div>
            </div>
        </div>
   
    </div>
</div>

</asp:Content>
