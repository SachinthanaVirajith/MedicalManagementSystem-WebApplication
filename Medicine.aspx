<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Medicine.aspx.cs" Inherits="MedicalManagementSystem.Medicine" %>
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
                            <h2>Medicine</h2> 
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
                    <div class="col-md-6">
                        <div class="card text-white bg-dark mb-3" style="max-width: 18rem;">
                          <div class="card-header"><h4>Add</h4></div>
                                <div class="card-body">
                                <a href="AddMedicine.aspx"><h5 class="card-title">Add New Medicine Stock</h5></a>
                                <p class="card-text">Use this for add counts of new medicine</p>
                          </div>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="card text-white bg-dark mb-3" style="max-width: 18rem;">
                          <div class="card-header"><h4>Available</h4></div>
                                <div class="card-body">
                                <a href="AvailableMedicine.aspx"><h5 class="card-title">Show available stock</h5></a>
                                <p class="card-text">Use this for check the available medicine stock in the MI room</p>
                          </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
</asp:Content>
