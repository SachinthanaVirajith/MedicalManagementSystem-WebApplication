 <%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HomePageAdmin.aspx.cs" Inherits="MedicalManagementSystem.HomePage" %>
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

    <section>
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
                <br />
                <div class="row">
                    <div class="col-md-4">
                        <div class="card text-white bg-dark mb-3" style="max-width: 18rem;">
                          <div class="card-header"><h4>PATIENT</h4></div>
                                <div class="card-body">
                                <a href="FirstSearchPatient.aspx"><h5 class="card-title">Add Patient Details</h5></a>
                                <p class="card-text">Use this for register new patient and store personal data and medical data of patient</p>
                          </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="card text-white bg-dark mb-3" style="max-width: 18rem;">
                          <div class="card-header"><h4>SEARCH</h4></div>
                                <div class="card-body">
                                <a href="DisplayPatientsNew.aspx"><h5 class="card-title">Search Patient Details</h5></a>
                                <p class="card-text">Use this for search patient by serial Number and watch number of current patients</p>
                          </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="card text-white bg-dark mb-3" style="max-width: 18rem;">
                          <div class="card-header"><h4>Medicine</h4></div>
                                <div class="card-body">
                                <a href="Medicine.aspx"><h5 class="card-title">Check Medicine avialability</h5></a>
                                <p class="card-text">Use this for check medicine store. This provides current medicine availabilty and usage.</p>
                          </div>
                        </div>
                 </div>            
                </div>
        </div>
    </section>
    <br>
    <br>
    <br>
    <br>

    <section>
        <div class="container">
            <div class="row">
                
                <div class="col-md-4">
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
    </section>

 </asp:Content>
 