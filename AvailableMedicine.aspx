<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AvailableMedicine.aspx.cs" Inherits="MedicalManagementSystem.AvailableMedicine" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 253px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



     <section>
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <center>
                            <h2>Available Medicine Stock</h2> 
                        </center>
                    </div>
                    <div class="col-12">
                        <center>
                            <hr />
                        </center>
                    </div>
                </div>
                <br />
                <br />
                <br />
                <div class="row">
                    <div class="col-md-4">
                       <div class="card border-primary mb-3" style="max-width: 18rem;">
                            <div class="card-header"><h4>Paracetamol</h4></div>
                            <div class="card-body text-primary">
                                <h5 class="card-title">Stored : <asp:Label ID="Label1" runat="server" Text=""></asp:Label></h5>
                                <h5 class="card-title">Available : <asp:Label ID="Label2" runat="server" Text=""></asp:Label></h5>
                            </div>
                        </div> 
                    </div>
                    <div class="col-md-4">
                       <div class="card border-primary mb-3" style="max-width: 18rem;">
                            <div class="card-header"><h4>Amoxicillin</h4></div>
                            <div class="card-body text-primary">
                                <h5 class="card-title">Stored : <asp:Label ID="Label3" runat="server" Text=""></asp:Label></h5>
                                <h5 class="card-title">Available : <asp:Label ID="Label4" runat="server" Text=""></asp:Label></h5>
                            </div>
                        </div> 
                    </div>
                    <div class="col-md-4">
                       <div class="card border-primary mb-3" style="max-width: 18rem;">
                            <div class="card-header"><h4>Cephalexin</h4></div>
                            <div class="card-body text-primary">
                                <h5 class="card-title">Stored : <asp:Label ID="Label5" runat="server" Text=""></asp:Label></h5>
                                <h5 class="card-title">Available : <asp:Label ID="Label6" runat="server" Text=""></asp:Label></h5>
                            </div>
                        </div> 
                    </div>
                </div>
                <br />
                <br />
                <div class="row">
                    <div class="col-md-4">
                       <div class="card border-primary mb-3" style="max-width: 18rem;">
                            <div class="card-header"><h4>Vitamin C</h4></div>
                            <div class="card-body text-primary">
                                <h5 class="card-title">Stored : <asp:Label ID="Label7" runat="server" Text=""></asp:Label></h5>
                                <h5 class="card-title">Available : <asp:Label ID="Label8" runat="server" Text=""></asp:Label></h5>
                            </div>
                        </div> 
                    </div>
                    <div class="col-md-4">
                       <div class="card border-primary mb-3" style="max-width: 18rem;">
                            <div class="card-header"><h4>Piriton</h4></div>
                            <div class="card-body text-primary">
                                <h5 class="card-title">Stored : <asp:Label ID="Label9" runat="server" Text=""></asp:Label></h5>
                                <h5 class="card-title">Available : <asp:Label ID="Label10" runat="server" Text=""></asp:Label></h5>
                            </div>
                        </div> 
                    </div>
                    <div class="col-md-4">
                       <div class="card border-primary mb-3" style="max-width: 18rem;">
                            <div class="card-header"><h4>Prednisolone</h4></div>
                            <div class="card-body text-primary">
                                <h5 class="card-title">Stored : <asp:Label ID="Label11" runat="server" Text=""></asp:Label></h5>
                                <h5 class="card-title">Available : <asp:Label ID="Label12" runat="server" Text=""></asp:Label></h5>
                            </div>
                        </div> 
                    </div>
                </div>
                <br />
                <br />
                <div class="row">
                    <div class="col-md-4">
                       <div class="card border-primary mb-3" style="max-width: 18rem;">
                            <div class="card-header"><h4>Omeprazole</h4></div>
                            <div class="card-body text-primary">
                                <h5 class="card-title">Stored : <asp:Label ID="Label13" runat="server" Text=""></asp:Label></h5>
                                <h5 class="card-title">Available : <asp:Label ID="Label14" runat="server" Text=""></asp:Label></h5>
                            </div>
                        </div> 
                    </div>
                    <div class="col-md-4">
                       <div class="card border-primary mb-3" style="max-width: 18rem;">
                            <div class="card-header"><h4>Diclofenac</h4></div>
                            <div class="card-body text-primary">
                                <h5 class="card-title">Stored : <asp:Label ID="Label15" runat="server" Text=""></asp:Label></h5>
                                <h5 class="card-title">Available : <asp:Label ID="Label16" runat="server" Text=""></asp:Label></h5>
                            </div>
                        </div> 
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        
                            <center><a href="Medicine.aspx"><h6>Back</h6></a></center>
                        
                    </div>
                </div>
            </div>
         </section>                  
     </asp:Table>


    













    

</asp:Content>
