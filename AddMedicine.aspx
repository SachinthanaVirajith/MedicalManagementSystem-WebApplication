<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddMedicine.aspx.cs" Inherits="MedicalManagementSystem.AddMedicine" %>
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
                                    <h3>Add Medicine Stock</h3>
                                </center>
                             </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <hr />
                                </center>
                             </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h5>Add the number of medicine in new stock seperatly</h5>
                                </center>
                             </div>
                        </div>
                        <br />
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
                        <br />
                         <br />
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
                         <br />
                         <br />
                         <div class="row">
                            <div class="col">
                                    <asp:Button ID="Button1" class="btn btn-success btn-block" runat="server" Text="Add Stock" OnClick="Button1_Click"></asp:Button> 
                             </div>
                        </div>
                         <br />
                         <div class="row">
                            <div class="col">
                                    <center><a href="Medicine.aspx"><h6>Back</h6></a></center>
                             </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </div>



</asp:Content>
