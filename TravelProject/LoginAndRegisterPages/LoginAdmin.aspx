<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginAdmin.aspx.cs" Inherits="TravelProject.LoginAndRegisterPages.LoginAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Admin Login</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
        <link rel="stylesheet" href="../css/styleLoginAdmin.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="tit"><h3>Admin Access Page</h3></div>
        <section id="form_body">
            <div id="box">
                <div id="form">
                    <h2>Admin Login</h2>
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
                    <asp:Label ID="warn" style="color:red;text-align:center;font-size:12px;" runat="server" Text=""></asp:Label>
                    <asp:Button ID="log" runat="server" class="loginClick" Text="Login" OnClick="log_Click" />
                </div>
            </div>
        </section>
    </form>
</body>
</html>
