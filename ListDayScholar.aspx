<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ListDayScholar.aspx.cs" Inherits="MedicalManagementSystem.ListDayScholar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <dic class="col-md-12 mx-auto">
                <div class="card">

                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center><h3><b>Day Scholar Report</b></h3></center>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <hr />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <center><asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder></center>
                        </div>
                    </div>
                </div>
            </dic>
        </div>
    </div>
</asp:Content>
