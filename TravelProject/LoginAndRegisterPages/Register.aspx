<%@ Page Title="" UnobtrusiveValidationMode="none" Language="C#" MasterPageFile="~/LoginAndRegisterPages/LoginAndRegisterPages.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="TravelProject.LoginAndRegisterPages.NewFolder1.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Register
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="style" runat="server">
    <link rel="stylesheet" href="../css/styleRegister.css"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <section class="form_body">
        <div class="box">
            <div class="form">
                <h2>Register</h2>
                <div class="doubleInput">
                    <div class="doubleInputElement">
                        <asp:TextBox ID="fname" required="required" runat="server"></asp:TextBox>
                        <span>First Name</span>
                        <i></i>
                    </div>
                    <div class="doubleInputElement">
                        <asp:TextBox ID="lname" required="required" runat="server"></asp:TextBox>
                        <span>Last Name</span>
                        <i></i>
                    </div>
                </div>
                <div class="inputElement">
                    <asp:TextBox ID="usrname" required="required" runat="server"></asp:TextBox>
                    <span>Username</span>
                    <i></i>
                </div>
                <div class="inputElement">
                  <asp:TextBox TextMode="Email" ID="email" required="required" runat="server"></asp:TextBox>
                  <span>Email</span>
                  <i></i>
                </div>
                <div class="doubleInput">
                    <div class="doubleInputElement">
                        <asp:TextBox TextMode="Password" ID="pass" required="required" runat="server"></asp:TextBox>
                        <span>Password</span>
                        <i></i>
                    </div>
                    <div class="doubleInputElement">
                        <asp:TextBox TextMode="Password" ID="passConfirm" required="required" runat="server"></asp:TextBox>
                        <span>Confirm Password</span>
                        <i></i>
                    </div>
                </div>
                <div style="text-align: center;margin-top: 20px;font-size: 14px">
                  <p style="color:#ddd;">Already user, <a style="color:#70c4f6;" href="Login.aspx">Login</a></p>
                </div>
                <asp:Label ID="warn" style="color:red;text-align:center;font-size:12px;" runat="server" Text=""></asp:Label>
                <asp:Button ID="reg" runat="server" Text="Register" OnClick="reg_Click" />
            </div>
        </div>
    </section>
</asp:Content>
