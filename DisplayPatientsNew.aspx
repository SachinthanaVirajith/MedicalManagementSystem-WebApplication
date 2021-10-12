<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayPatientsNew.aspx.cs" Inherits="MedicalManagementSystem.DisplayPatientsNew" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Bootstrap/CSS/bootstrap.min.css" rel="stylesheet" />
    <style>
        *{
            margin:0;
            padding:0;
            font-family: 'Roboto', sans-serif;
            justify-content:center;
            align-items:center;
            
        }

        body{
            display:flex;
            min-height:100vh;
            background:#101010;
            
        }

        .container{
            position:relative;
            width:900px;
            display:flex;
            justify-content:space-around;
        }

        

        .container .card{
            position:relative;
            width: 250px;
            background: linear-gradient(0deg, #1b1b1b, #222, #1b1b1b);
            display:flex;
            justify-content:center;
            align-items: center;
            height:300px;
            border-radius:4px;
            text-align:center;
            overflow:hidden;
            transition: 0.5s;
            
            
        }

        .container .card:hover{
            transform:  translateY(-10px);
            box-shadow: 0 15px 35px rgba(0,0,0,.5);
        }
        
        .container .card:before{
            content:'';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(255,255,255,.03);
            pointer-events: none;
            z-index: 1;
        }

        .percent {
            position:relative;
            width:150px;
            height:150px;
            border-radius: 50%;
            box-shadow: inset 0 0 50px #000;
            background:#222;
            z-index: 1000;
        }

        .percent .number{ 
            position: absolute;
            top:0;
            left:0;
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            border-radius: 50%;
        }

        .card:hover .text{
            color: #fff;
        }

        .text{
            position:relative;
            color: #777;
            margin-top: 20px;
            font-weight: 700;
            font-size: 18px;
            letter-spacing: 1px;
            text-transform:uppercase;
            transition: 0.5s;
        }

        .percent .number h2{
            color: #777;
            font-weight:700;
            font-size:40px;
            transition:0.5s;
        }

        .card:hover .percent .number h2{
            color: #fff;
            font-size:60px;
        } 

        svg{
            position:relative;
            width:150px;
            height:150px;
            z-index:1000;
        }

        svg circle{
            width: 100%;
            height: 100%;
            fill: none;
            stroke:#fff;
            stroke-width: 10;
            stroke-linecap:round;
            transform:translate(5px, 5px);
        }

        svg circle:nth-child(2){
            stroke-dasharray: 1;                                                                                  
            stroke-dashoffset: 1;
        }

        .card:nth-child(1) svg circle:nth-child(2){
            stroke:#00a1ff;
        }

        .card:nth-child(2) svg circle:nth-child(2){
            stroke:#00a1ff;
        }

        .card:nth-child(3) svg circle:nth-child(2){
            stroke:#00a1ff;
        }

        #h3Color {
            color:#fff;
            
        }

        hr{
            color:#fff;
        }
    </style>


</head>
<body>
    <form id="form1" runat="server">
      <div class="container-fluid">
        <div class="form-row">
                <div class="col-md-6 mx-auto">
                    <center>
                        <h3 id="h3Color">Patient Count</h3>
                    </center>
                </div>
         </div>
         
          <center><asp:Table ID="Table1" runat="server" Height="171px" Width="570px" CssClass="auto-style1" CellPadding="1" CellSpacing="1">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"><asp:TextBox ID="Search_Patient_txt" class="form-control" AutoCompleteType="Disabled" runat="server"></asp:TextBox></asp:TableCell>
                    <asp:TableCell runat="server"><asp:Button ID="Button1" class="btn btn-primary mb-3" runat="server" Text="Search" OnClick="Button1_Click1"></asp:Button></asp:TableCell>
                </asp:TableRow>
                </asp:Table>  
              
      </div>
        <br />
        <br />


       <div class="container">
        <div class="card"><a href="ListDayScholar.aspx">
            <div class="box">
                <div class="percent">
                    <svg>
                        <circle cx="70" cy="70" r="70"></circle>
                        <circle cx="70" cy="70" r="70"></circle>
                    </svg>
                    <div class ="number">
                        <h2><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h2>
                    </div>
                </div>
                    <h2 class="text">Dayscholar</h2>
            </div></a>
        </div>

        <div class="card"><a href="ListOfficerCadet.aspx">
            <div class="box">
                <div class="percent">
                    <svg>
                        <circle cx="70" cy="70" r="70"></circle>
                        <circle cx="70" cy="70" r="70"></circle>
                    </svg>
                    <div class ="number">
                        <h2>
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></h2>
                    </div>
                </div>
                    <h2 class="text">Officer Cadet</h2>
            </div></a>
        </div>

        <div class="card"><a href="ListLecturer.aspx">
            <div class="box">
                <div class="percent">
                    <svg>
                        <circle cx="70" cy="70" r="70"></circle>
                        <circle cx="70" cy="70" r="70"></circle>
                    </svg>
                    <div class ="number">
                        <h2>
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></h2>
                    </div>
                </div>
                    <h2 class="text">Lecturer</h2>
            </div></a>
        </div>
    </div>
    <br />
    <br />

    <div class="container">
        <div class="card"><a href="ListMilitoryOfficer.aspx">
            <div class="box">
                <div class="percent">
                    <svg>
                        <circle cx="70" cy="70" r="70"></circle>
                        <circle cx="70" cy="70" r="70"></circle>
                    </svg>
                    <div class ="number">
                        <h2>
                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></h2>
                    </div>
                </div>
                    <h2 class="text">Militory Officer</h2>
            </div></a>
        </div>

        <div class="card"><a href="ListMilitoryStaff.aspx">
            <div class="box">
                <div class="percent">
                    <svg>
                        <circle cx="70" cy="70" r="70"></circle>
                        <circle cx="70" cy="70" r="70"></circle>
                    </svg>
                    <div class ="number">
                        <h2>
                            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></h2>
                    </div>
                </div>
                    <h2 class="text">Militory Staff</h2>
            </div></a>
        </div>

        <div class="card"><a href="ListCivilStaff.aspx">
            <div class="box">
                <div class="percent">
                    <svg>
                        <circle cx="70" cy="70" r="70"></circle>
                        <circle cx="70" cy="70" r="70"></circle>
                    </svg>
                    <div class ="number">
                        <h2>
                            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></h2>
                    </div>
                </div>
                    <h2 class="text">Civil Staff</h2>
            </div></a>
        </div>
    </div>
    <div class="container-fluid">
        <div class="form-row">
                <div class="col-md-6 mx-auto">
                    <center>
                        <center><a href="HomePageAdmin.aspx"><h6><asp:Label ID="Label7" runat="server" Text="Back"></asp:Label></h6></panel></a></center>
                    </center>
                </div>
        </div>
        <div class="form-row">
                <div class="col-md-6 mx-auto">
                    <center>
                        <center><a href="HomePageUser.aspx"><h6><asp:Label ID="Label8" runat="server" Text="Back"></asp:Label></p></panel></a></center>
                    </center>
                </div>
         </div>
    </div>

    </form>
</body>
</html>
