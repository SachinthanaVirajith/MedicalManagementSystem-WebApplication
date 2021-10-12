<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HomePageUser.aspx.cs" Inherits="MedicalManagementSystem.HomePageUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>

        body{
            background-color:#283747 ;
        }

        .card:hover{
           transform:  translateY(-10px);
            box-shadow: 0 15px 35px rgba(0,0,0,.5);
            transition:0.5s;
        }

        .card:hover .card-header h4{
            font-weight:700;
            font-size:40px;
            transition:0.5s;
        }

    </style>

    <div class="container">
                <div class="row">
                    <div class="col-12">
                        <center>
                            <h2>Our Features</h2> 
                        </center>
                    </div>
                </div>
                <br />
                <br />
                <div class="row">
                    <div class="col-md-8">
                        <div class="card text-white bg-dark mb-3" style="max-width: 18rem;">
                          <div class="card-header"><h4>SEARCH</h4></div>
                                <div class="card-body">
                                <a href="DisplayPatientsNew.aspx"><h5 class="card-title">Search Patient Details</h5></a>
                                <p class="card-text">Use this for search patient by serial Number and watch number of current patients</p>
                          </div>
                        </div>
                    </div> 
                    
                     <div class="col-md-8">
                        <div class="card text-white bg-dark mb-3" style="max-width: 18rem;">
                          <div class="card-header"><h4>Visit Us</h4></div>
                                <div class="card-body">
                                <a href="##"><h5 class="card-title">Information about MI room</h5></a>
                                <p class="card-text">Use this for check medicine store. This provides current medicine availabilty and usage.</p>
                          </div>
                        </div>
                    </div> 
                </div>
        </div>

    

</asp:Content>
