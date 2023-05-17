<%@ Page Title="" UnobtrusiveValidationMode="none" Language="C#" MasterPageFile="~/LoginAndRegisterPages/LoginAndRegisterPages.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TravelProject.LoginAndRegisterPages.NewFolder1.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Login
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="style" runat="server">
    <link rel="stylesheet" href="../css/styleLogin.css"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <section class="form_body">
            <div class="box">
                <div class="form">
                    <h2>Login</h2>
                    <div class="inputElement">
                        <asp:TextBox ID="usrname" required="required" runat="server"></asp:TextBox>
                        <span>Username</span>
                        <i></i>
                    </div>
                    <div class="inputElement">
                        <asp:TextBox ID="pass" TextMode="Password" required="required" runat="server"></asp:TextBox>
                        <span>Password</span>
                        <i></i>
                    </div>
                    <div style="margin-top: 20px;font-size: 11px">
                      <p style="float:left;color:#ddd;">Not have an account yet, <a style="color:#70c4f6;" href="Register.aspx">Register</a></p>
                      <p style="float:right;color:#ddd;"><a style="color:#70c4f6;" href="ResetPassword.aspx">Forgot password?</a></p>
                    </div>
                    <asp:Label ID="warn" style="color:red;text-align:center;font-size:12px;" runat="server" Text=""></asp:Label>
                    <asp:Button ID="log" runat="server" class="loginClick" Text="Login" OnClick="log_Click" />
                </div>
            </div>
        </section>
</asp:Content>
