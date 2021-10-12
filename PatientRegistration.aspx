<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PatientRegistration.aspx.cs" Inherits="MedicalManagementSystem.PatientRegistration_2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


   

   <form class="needs-validation" novalidate>
    <div class="container">
    <div class="row">
    <div class="col-md-12 mx-auto">
    <div class="card">
    <div class="card-body">
            <div class="form-row">
                <div class="col-md-6 mx-auto">
                    <center>
                        <h3>Register Patient</h3>
                    </center>
                </div>
            </div>
            <p></p>
            <div class="form-row">
                <div class="col-md-6 mx-auto">
                    <center>
                        <hr />
                    </center>
                </div>
            </div>
            <p></p>
            <div class="form-row">
                <div class="col-md-6 mx-auto">
                    <asp:Label ID="Label3" runat="server" Text="Label" for="serialNum_txt">Serial Number</asp:Label>
                    <asp:TextBox ID="serialNum_txt" class="form-control" runat="server" AutoCompleteType="Disabled" required ></asp:TextBox>
                </div>
            </div>
            <p></p>
            <div class="form-row">
                <div class="col-md-6 mx-auto">
                    <asp:Label ID="Label2" runat="server" Text="Label">Patient State</asp:Label><br />
                    <asp:dropdownlist id = "PatientState_txt" runat="server" class="custom-select mr-sm-2">
                        <asp:ListItem value="0">Select State</asp:ListItem>
                        <asp:ListItem>Day Scholar</asp:ListItem>
                        <asp:ListItem>Officer Cadet</asp:ListItem>
                        <asp:ListItem>Lecturer</asp:ListItem>
                        <asp:ListItem>Militory Officer</asp:ListItem>
                        <asp:ListItem>Militory Staff</asp:ListItem>
                        <asp:ListItem>Civil Staff</asp:ListItem>
                    </asp:dropdownlist>

                </div>
            </div>
            <br />
            <br />
            <div class="frow">
                <div class="col">
                    <center><asp:Button ID="Button2" runat="server" class="btn btn-success btn-block" Text="Register" OnClick="Button2_Click" /></center>
                </div>
            </div>
            <p></p>
            <div class="form-row">
                <div class="col-md-6 mx-auto">
                    <center><a href="HomePageAdmin.aspx"><p>Back</p></panel></a></center>
                </div>
            </div>
        </div>
    </div>
    </div>
    </div>
    </div>
       </form>
</asp:Content>
