<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DiseaseMedicine.aspx.cs" Inherits="MedicalManagementSystem.DiseaseMedicine" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

           
    <div class="container">
        <div class="row">
           <div class="col-md-12 mx-auto">
            <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col">
                    <center>
                        <h3>Disease and Medicine</h3>
                    </center>
                    </div>
                </div>
            <p></p>
            <div class="row">
                <div class="col">
                    <center>
                        <asp:Label ID="ShowPatientName" runat="server" Text="Label"></asp:Label>
                    </center>
                </div>
            </div>
            <p></p>
            <div class="row">
                <div class="col">
                    <center>
                        <hr />
                    </center>
                </div>
            </div>
            <p></p>
            <div class="form-row">
                <div class="col-md-6 mx-auto">
                    <asp:Label ID="Label1" runat="server" Text="Label">Diagnosis</asp:Label>
                    <p></p>
                    <asp:TextBox ID="diagnosis_txt" runat="server" class="form-control" AutoCompleteType="Disabled" required></asp:TextBox>
                </div>
            </div>
            <p></p>
            <p></p>
            <br /><br />
            <div class="form-row">
                <div class="col-md-6 mx-auto">
                    <center>
                        <h5>Enter Number of Tablets for each one</h5>
                    </center>
                </div>
            </div>
            <br />
            <div class="form-row">
                <div class="col-md-2 mx-auto">
                    <asp:Label ID="Label2" runat="server" Text="Label">Paracetamol</asp:Label>
                    <asp:TextBox ID="paracetamol_txt" runat="server" class="form-control" AutoCompleteType="Disabled" placeholder="Volume"></asp:TextBox>
                </div>
                <div class="col-md-2 mx-auto">
                    <asp:Label ID="Label3" runat="server" Text="Label">Amoxicillin</asp:Label>
                    <asp:TextBox ID="amoxicillin_txt" runat="server" class="form-control" AutoCompleteType="Disabled" placeholder="Volume"></asp:TextBox>
                </div>
                <div class="col-md-2 mx-auto">
                    <asp:Label ID="Label4" runat="server" Text="Label">Cephalexin</asp:Label>
                    <asp:TextBox ID="cephalexin_txt" runat="server" class="form-control" AutoCompleteType="Disabled" placeholder="Volume"></asp:TextBox>
                </div>
                <div class="col-md-2 mx-auto">
                    <asp:Label ID="Label5" runat="server" Text="Label">Vitamin C</asp:Label>
                    <asp:TextBox ID="vitaminC_txt" runat="server" class="form-control" AutoCompleteType="Disabled" placeholder="Volume"></asp:TextBox>
                </div>
            </div>
            <p></p>
            <div class="form-row">
                <div class="col-md-2 mx-auto">
                    <asp:Label ID="Label6" runat="server" Text="Label">Piriton</asp:Label>
                    <asp:TextBox ID="piriton_txt" runat="server" class="form-control" AutoCompleteType="Disabled" placeholder="Volume"></asp:TextBox>
                </div>
                <div class="col-md-2 mx-auto">
                    <asp:Label ID="Label7" runat="server" Text="Label">Prednisolone</asp:Label>
                    <asp:TextBox ID="prednisolone_txt" runat="server" class="form-control" AutoCompleteType="Disabled" placeholder="Volume"></asp:TextBox>
                </div>
                <div class="col-md-2 mx-auto">
                    <asp:Label ID="Label8" runat="server" Text="Label">Omeprazole</asp:Label>
                    <asp:TextBox ID="omeprazole_txt" runat="server" class="form-control" AutoCompleteType="Disabled" placeholder="Volume"></asp:TextBox>
                </div>
                <div class="col-md-2 mx-auto">
                    <asp:Label ID="Label9" runat="server" Text="Label">Diclofenac</asp:Label>
                    <asp:TextBox ID="diclofenac_txt" runat="server" class="form-control" AutoCompleteType="Disabled" placeholder="Volume"></asp:TextBox>
                </div>
            </div>
            <p></p>
            <br />
            <div class="form-row">
                <div class="col-md-6 mx-auto">
                    <asp:Label ID="Label10" runat="server" Text="Label">Other Medicines</asp:Label>
                    <p></p>
                    <asp:TextBox ID="otherMedicines_txt" runat="server" AutoCompleteType="Disabled" class="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col">
                    <center><asp:Button ID="Button1" runat="server" Text="Save" class="btn btn-success btn-block" OnClick="Button1_Click" /></center>
                </div>
            </div>
            <br />
            <div class="form-row">
                <div class="col-md-6 mx-auto">
                    <center><a href="Data_patient.aspx"><p>Back</p></panel></a></center>
                </div>
            </div>
        </div>
        </div>
    </div>
</div>
</div>






</asp:Content>
