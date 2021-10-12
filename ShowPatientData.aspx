<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ShowPatientData.aspx.cs" Inherits="MedicalManagementSystem.ShowPatientData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <center> <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Medical Management SystemConnectionString %>" SelectCommand="SELECT * FROM [PatientPersonalData]"></asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="UniversityNumber" HeaderText="UniversityNumber" SortExpression="UniversityNumber" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Rank" HeaderText="Rank" SortExpression="Rank" />
        <asp:BoundField DataField="Intake" HeaderText="Intake" SortExpression="Intake" />
        <asp:BoundField DataField="Degree" HeaderText="Degree" SortExpression="Degree" />
    </Columns>
    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    <SortedAscendingCellStyle BackColor="#FDF5AC" />
    <SortedAscendingHeaderStyle BackColor="#4D0000" />
    <SortedDescendingCellStyle BackColor="#FCF6C0" />
    <SortedDescendingHeaderStyle BackColor="#820000" />
</asp:GridView></center>
    &nbsp;
    &nbsp;
    &nbsp;
    &nbsp;
    <center><a href="HomePage.aspx"><p>Back</p></a></center>

</a></asp:Content>
