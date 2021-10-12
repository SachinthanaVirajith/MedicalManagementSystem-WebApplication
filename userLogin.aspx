<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userLogin.aspx.cs" Inherits="MedicalManagementSystem.userLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        body{
            
            background-image:url(Icons/jair-lazaro-0lrJo37r6Nk-unsplash.jpg);
            
        }
        .card{
            background-color:#D0D3D4 ;
        }
       
    </style>
  
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="Icons/icons8-customer-96.png" />
                                    <h3><b>User Login</b></h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:textbox CssClass="form-control" id="TextBox1" placeholder="Member Id" runat="server" AutoCompleteType="Disabled"></asp:textbox>
                                </div>
                            </div>
                        </div> 

                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:textbox CssClass="form-control" id="TextBox2" placeholder="Password" runat="server" TextMode="Password"></asp:textbox>
                                </div>
                            </div>
                        </div> 

                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:button runat="server" class="btn btn-success btn-lg btn-block" text="Login" OnClick="Unnamed1_Click" />
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:button runat="server" Text="Sign In" class="btn btn-info btn-lg btn-block" type="button" value="Sign Up" OnClick="Button1_Click" />
                                </div>
                            </div>
                        </div> 
                    </div>
                </div>
                <br />
                </div>
        </div>
    </div>

</asp:Content>
