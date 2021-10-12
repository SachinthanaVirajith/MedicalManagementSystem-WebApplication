<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MedicalManagementSystem.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            
            background-image:url(Icons/jair-lazaro-0lrJo37r6Nk-unsplash.jpg);
            
        }
        .card{
            background-color:#D0D3D4 ;
        }
        h1,h2{
            color:#151B54;
        }
       
    </style>
    <link href="Bootstrap/CSS/bootstrap.min.css" rel="stylesheet" />
</head>
<body>

    <center><h1><b>Medical Management System</b></h1>
    <h2><b>Kotelawala Defence University - Southern Campus</h2></center></b>
    <br />
    <br />
    <br />
    <br />
    <form id="form1" runat="server">
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
                                    <asp:TextBox ID="TextBox1" Class="form-control" placeholder="Member Id" AutoCompleteType="Disabled" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div> 

                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox2" Class="form-control" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div> 

                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:Button ID="Button1" class="btn btn-success btn-lg btn-block" runat="server" Text="Login" OnClick="Button1_Click" />
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:Button ID="Button2" runat="server" class="btn btn-info btn-lg btn-block" Text="Register" OnClick="Button2_Click" />
                                </div>
                            </div>
                        </div> 
                    </div>
                </div>
                <br />
                </div>
        </div>
    </div>
    </form>
</body>
</html>
