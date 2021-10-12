<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminLogin.aspx.cs" Inherits="MedicalManagementSystem.adminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">

                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3><b>Admin Login</b></h3>
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
                                    <asp:textbox CssClass="form-control" id="TextBox1" placeholder="Member Id" runat="server"></asp:textbox>
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
                    </div>
                </div>
                <a href="userLogin.aspx"><< Back</a><br />
                <br />
                </div>
        </div>
    </div>

</asp:Content>
