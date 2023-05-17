<%@ Page Title="" UnobtrusiveValidationMode="none" Language="C#" MasterPageFile="~/LoginAndRegisterPages/LoginAndRegisterPages.Master" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="TravelProject.LoginAndRegisterPages.NewFolder1.ResetPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Reset Password
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="style" runat="server">
    <link rel="stylesheet" href="../css/styleResetPassword.css"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <section class="form_body">
            <div class="box">
                <div class="form">
                    <h2>Reset Password</h2>
                    <div class="inputElement">
                        <asp:TextBox ID="usrname" runat="server" required="required"></asp:TextBox>
                        <span>Enter Username</span>
                        <i></i>
                    </div>
                    <div class="inputElement">
                        <asp:TextBox ID="email" TextMode="Email" runat="server" required="required"></asp:TextBox>
                        <span>Enter Your Email</span>
                        <i></i>
                    </div>
                    <div class="inputElement">
                        <asp:TextBox ID="pass" TextMode="Password" runat="server" required="required"></asp:TextBox>
                        <span>New password</span>
                        <i></i>
                    </div>
                    <div class="inputElement">
                        <asp:TextBox ID="passConf" TextMode="Password" runat="server" required="required"></asp:TextBox>
                        <span>Confirm Password</span>
                        <i></i>
                    </div>
                    <div style="margin-top: 20px;font-size: 13px">
                      <p style="float:left;color:#ddd;">Have account, <a style="color:#70c4f6;" href="Login.aspx">Login</a></p>
                      <p style="float:right;color:#ddd;"><a style="color:#70c4f6;" href="Register.aspx">Register</a>, new account.</p>
                    </div>
                    <asp:Label ID="warn" style="text-align:center;font-size:12px;" runat="server" Text=""></asp:Label>
                    <asp:Button ID="rst" class="resetClick" runat="server" Text="Reset Password" OnClick="rst_Click" />
                </div>
            </div>
        </section>
</asp:Content>
