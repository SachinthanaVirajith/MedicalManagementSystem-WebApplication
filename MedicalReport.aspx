<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MedicalReport.aspx.cs" Inherits="MedicalManagementSystem.MedicalReport" %>
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
                                    <h3><b>Medical Report</b></h3>
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
                                    <h5><asp:Label ID="serialNum_lbl" runat="server" Text="Label"></asp:Label></h5>
                                </center>
                            </div>
                        </div>
                        <br />
                        <asp:table runat="server" Width="888px" Height="371px">
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server"><h5>Patient Name : </h5></asp:TableCell>
                                <asp:TableCell runat="server"><asp:Label ID="name_lbl" runat="server" Text="Label"></asp:Label></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server"><h5>Intake : </h5></asp:TableCell>
                                <asp:TableCell runat="server"><asp:Label ID="intake_lbl" runat="server" Text="Label"></asp:Label></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server"><h5>Rank : </h5></asp:TableCell>
                                <asp:TableCell runat="server"><asp:Label ID="rank_lbl" runat="server" Text="Label"></asp:Label></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server"><h5>Unit : </h5></asp:TableCell>
                                <asp:TableCell runat="server"><asp:Label ID="unit_lbl" runat="server" Text="Label"></asp:Label></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server"><h5>Unit Name : </h5></asp:TableCell>
                                <asp:TableCell runat="server"><asp:Label ID="unitName_lbl" runat="server" Text="Label"></asp:Label></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server"><h5>Work Place : </h5></asp:TableCell>
                                <asp:TableCell runat="server"><asp:Label ID="workPlace_lbl" runat="server" Text="Label"></asp:Label></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server"><h5>Phone Number : </h5></asp:TableCell>
                                <asp:TableCell runat="server"><asp:Label ID="phoneNum_lbl" runat="server" Text="Label"></asp:Label></asp:TableCell>
                            </asp:TableRow> 
                        </asp:table>
                        <br />
                        <br />

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
                                    <h5>Medical History of Patient</h5>
                                </center>
                            </div>
                         </div>
                        <br />
                         <div class="row">
                            <div class="col">
                                <center>
                                    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                                </center>
                            </div>
                         </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

                        
                        
  
</asp:Content>
