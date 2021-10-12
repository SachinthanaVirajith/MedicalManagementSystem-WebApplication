<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PatientDataEnter.aspx.cs" Inherits="MedicalManagementSystem.PatientDataEnter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    

    



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Medical Management SystemConnectionString %>" SelectCommand="SELECT * FROM [PatientRegistration]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="PId" HeaderText="PId" SortExpression="PId" />
            <asp:BoundField DataField="SerialNumber" HeaderText="SerialNumber" SortExpression="SerialNumber" />
            <asp:BoundField DataField="PatientState" HeaderText="PatientState" SortExpression="PatientState" />
        </Columns>
    </asp:GridView>


    

    



</asp:Content>
