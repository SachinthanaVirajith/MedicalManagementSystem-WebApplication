<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Data_patient.aspx.cs" Inherits="MedicalManagementSystem.Data_patient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class ="container">
    <div class="row">
    <div class="col-md-12 mx-auto">
    <div class="card">
    <div class="card-body">
            <div class="form-row">
                <div class="col-md-6 mx-auto">
                    <center>
                        <h3>Enter Patient Data</h3>
                    </center>
                </div>
            </div>
            <p></p>
            <div class="form-row">
                <div class="col-md-6 mx-auto">
                    <center>
                        <asp:Label ID="ShowPatientState_lbl" runat="server" Text="Label"></asp:Label>
                    </center>
                </div>
            </div>
            <p></p>
            <div class="form-row">
                <div class="col-md-6 mx-auto">
                    <center>
                        <hr />
                    </center>
                </div>
            </div>
            <p></p>
            <div class="form-row">
                <div class="col-md-6 mx-auto">
                        <asp:Label ID="Serical_Num" runat="server" Text="Label">Serial Number : </asp:Label><br />
                        <asp:Label ID="show_serial_num" runat="server" Text="Label"></asp:Label>
                </div>
            </div>
            <p></p>
            <div class="form-row">
                <div class="col-md-6 mx-auto">
                    <asp:Label ID="Label1" runat="server" Text="Label">Name</asp:Label>
                    <asp:TextBox ID="name_txt" class="form-control" runat="server" AutoCompleteType="Disabled" required></asp:TextBox>
                </div>
            </div>
            <p></p>
            <div class="form-row">
                <div class="col-md-6 mx-auto">
                    <asp:Label ID="Label2" runat="server" Text="Label">Intake</asp:Label><br />
                    <asp:dropdownlist id = "intake_txt" runat="server" class="custom-select mr-sm-2" required>
                        <asp:ListItem value="0">Select Intake</asp:ListItem>
                        <asp:ListItem>Intake 33</asp:ListItem>
                        <asp:ListItem>Intake 34</asp:ListItem>
                        <asp:ListItem>Intake 35</asp:ListItem>
                        <asp:ListItem>Intake 36</asp:ListItem>
                        <asp:ListItem>Intake 37</asp:ListItem>
                    </asp:dropdownlist>

                </div>
            </div>
            <p></p>
            <div class="form-row">
                <div class="col-md-6 mx-auto">
                    <asp:Label ID="Label3" runat="server" Text="Label">Rank</asp:Label>
                    <asp:TextBox ID="Rank_txt" class="form-control" runat="server" AutoCompleteType="Disabled" required></asp:TextBox>
                </div>
            </div>
            <p></p>
            <div class="form-row" id="xxx">
                <div class="col-md-6 mx-auto">
                    <asp:Label ID="Label4" runat="server" Text="Label">Unit</asp:Label><br />
                    <asp:dropdownlist id = "unit_txt" runat="server" class="custom-select mr-sm-2" required>
                        <asp:ListItem value="0">Select Unit</asp:ListItem>
                        <asp:ListItem>Air Force</asp:ListItem>
                        <asp:ListItem>Navy</asp:ListItem>
                        <asp:ListItem>Army</asp:ListItem>
                    </asp:dropdownlist>
                </div>
            </div>
            <p></p>
            <div class="form-row">
                <div class="col-md-4 mx-auto">
                    <asp:Label ID="Label5" runat="server" Text="Label">Unit Name</asp:Label>
                    <asp:TextBox ID="unitName_txt" class="form-control" runat="server" AutoCompleteType="Disabled" required></asp:TextBox>
                </div>
            </div>
            <p></p>
            <div class="form-row">
                <div class="col-md-6 mx-auto">
                    <asp:Label ID="Label6" runat="server" Text="Label">Work Place</asp:Label>
                    <asp:TextBox ID="WorkPlace_txt" class="form-control" runat="server" AutoCompleteType="Disabled" required></asp:TextBox>
                </div>
            </div>
            <p></p>
            <div class="form-row">
                <div class="col-md-6 mx-auto">
                    <asp:Label ID="Label7" runat="server" Text="Label">Phone Number</asp:Label>
                    <asp:TextBox ID="PhoneNum_txt" class="form-control" runat="server" AutoCompleteType="Disabled" required></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <br />
            <div class="form-row">
                <div class="col">
                    <center><asp:Button ID="Button1" runat="server" Text="Save" class="btn btn-success btn-block" OnClick="Button1_Click"/></center>
                </div>
            </div> 
            <p></p>
            <div class="form-row">
                <div class="col-md-6 mx-auto">
                    <center><a href="PatientRegistration.aspx"><p>Back</p></panel></a></center>
                </div>
            </div> 
    </div>
</div>
</div>
</div>
</div>


</asp:Content>
