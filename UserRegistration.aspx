<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="MedicalManagementSystem.UserRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 mx-auto">

                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="" src="Icons/icons8-customer-96.png" />
                                    <h3><b>User Registration</b></h3>
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
                                    <asp:textbox CssClass="form-control" id="TextBox1" placeholder="User Name" runat="server"></asp:textbox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:textbox CssClass="form-control" id="TextBox3" placeholder="E Mail" runat="server"></asp:textbox>
                                </div>
                            </div>

                        </div> 

                        <div class="row">
                            <div class="col-6">
                                <div class="form-group">
                                    <asp:textbox CssClass="form-control" id="TextBox2" placeholder="Password" runat="server" TextMode="Password"></asp:textbox>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <asp:textbox CssClass="form-control" id="TextBox4" placeholder="Confirm Password" runat="server" TextMode="Password"></asp:textbox>
                                </div>
                            </div>
                        </div> 
                        
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:button runat="server" text="Sign In" class="btn btn-success btn-lg btn-block" type="button" value="Sign Up" OnClick="Unnamed1_Click" />
                                </div>
                            </div>
                        </div> 
                    </div>
                </div>
                <a href="userLogin.aspx"><< Back </a><br />
                <br />
                </div>
        </div>
    </div>

</asp:Content>
