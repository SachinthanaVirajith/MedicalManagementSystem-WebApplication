<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FirstSearchPatient.aspx.cs" Inherits="MedicalManagementSystem.FirstSearchPatient" %>
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
                                <h3>Search Registered Patient</h3>
                            </center>
                        </div>
                    </div>
                
                <p></p>
                <div class="row">
                    <div class="col-md-6 mx-auto">
                        <center>
                            <hr />
                        </center>
                    </div>
                </div>
            
        
            
            <center><asp:Table ID="Table1" runat="server" Height="229px" Width="570px" CssClass="auto-style1">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"><asp:TextBox ID="TextBox1" class="form-control" PlaceHolder="Service Number" AutoCompleteType="Disabled" runat="server"></asp:TextBox></asp:TableCell>
                    <asp:TableCell runat="server"><asp:Button ID="Button2" class="btn btn-primary mb-3" runat="server" Text="Search" OnClick="Button2_Click" /></asp:TableCell>
                    <asp:TableCell runat="server"><asp:Button ID="Button3" class="btn btn-danger btn-block" runat="server" Text="Register" OnClick="Button3_Click"></asp:Button></asp:TableCell>
                </asp:TableRow>
                </asp:Table>

                <asp:Table ID="Table2" runat="server" Height="192px" Width="570px" CssClass="auto-style1">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"><h4><asp:Label ID="Label4" runat="server" Text=""></asp:Label></h4></asp:TableCell>
                    <asp:TableCell runat="server"><h4><asp:Label ID="lblName" runat="server" Text=""></asp:Label></h4></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"><h4><asp:Label ID="Label1" runat="server" Text=""></asp:Label></h4></asp:TableCell>
                    <asp:TableCell runat="server"><h4><asp:Label ID="lblSerialNum" runat="server" Text=""></asp:Label></h4></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"><h4><asp:Label ID="Label2" runat="server" Text=""></asp:Label></h4></asp:TableCell>
                    <asp:TableCell runat="server"><h4><asp:Label ID="lblId" runat="server" Text=""></asp:Label></h4></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"><h4><asp:Label ID="Label3" runat="server" Text=""></asp:Label></h4></asp:TableCell>
                    <asp:TableCell runat="server"> <h4><asp:Label ID="lblPState" runat="server" Text=""></asp:Label></h4></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
    
            <center><asp:Table ID="Table3" runat="server" Height="145px" Width="207px" CssClass="auto-style1">
            <asp:TableRow runat="server">
                    <asp:TableCell runat="server"><asp:Button ID="Button1" class="btn btn-success btn-block" runat="server" Text="Next" OnClick="Button1_Click"></asp:Button></asp:TableCell>
                </asp:TableRow>
                </asp:Table></center>
            </center>
        </div>
       </div>
    </div>
</div>
</div>
   
                
                
           
</asp:Content>
