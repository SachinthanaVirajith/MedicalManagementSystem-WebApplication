<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="MedicalManagementSystem.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Bootstrap/CSS/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <br />
    <br />
    <br />
    <br />
    <form id="form1" runat="server">
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
                                    <asp:textbox CssClass="form-control" id="TextBox1" placeholder="User Name" AutoCompleteType="Disabled" runat="server"></asp:textbox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:textbox CssClass="form-control" id="TextBox3" placeholder="E Mail" AutoCompleteType="Disabled" runat="server"></asp:textbox>
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
                                    <asp:Button ID="Button1" runat="server" class="btn btn-success btn-lg btn-block" Text="Sign In" value="Sign Up" OnClick="Button1_Click" />
                                    
                                </div>
                            </div>
                        </div> 
                    </div>
                </div>
                <a href="Login.aspx"><< Back </a><br />
                <br />
                </div>
        </div>
    </div>
    </form>
</body>
</html>
