<%@ Page Language="C#" UnobtrusiveValidationMode="none" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="TravelProject.ProfilePages.History" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>History</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"/>
    <!-- Font awesome cdn link -->
    <script src="https://kit.fontawesome.com/a46a1ee543.js" crossorigin="anonymous"></script>
    <link rel="stylesheet"href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
    <link rel="stylesheet" href="../css/historyStyle.css" />
    <link rel="stylesheet" href="../css/styleNavUser.css" />
    <link rel="stylesheet" href="../css/goUpStyle.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Start Header -->
    <section id="header">
      <a href="../UserHomePages/Home.aspx"><img style="border-radius:50%;width:44px;" src="../img/webLogo.png"/></a>
      <div>
        <nav id="navbar">
          <a href="../UserHomePages/Home.aspx">Home</a>
          <a href="../UserHomePages/About.aspx">About</a>
          <a href="../UserHomePages/Book.aspx">Book</a>
          <a href="../UserHomePages/Contact.aspx">Contact</a>
        </nav>
      </div>
      <div class="user__icon">
        <asp:Image ID="userpic1" onclick="toggleMenu()" class="use-pic" runat="server" />
        <div class="sub-menu-wrab" id="subMenu">
          <div class="sub-menu">
            <div class="user-info">
              <asp:Image ID="userpic2" ImageUrl="../img/user.jpg" runat="server" />
              <asp:Label ID="username" runat="server" ></asp:Label>
            </div>
            <hr/>
            <a href="profileUser.aspx" class="sub-menu-link">
              <i class="fas fa-user"></i>
              <p>Profile</p>
              <span>></span>
            </a>
            <a href="Settings.aspx" class="sub-menu-link">
              <i class="fas fa-cog"></i>
              <p>Settings</p>
              <span>></span>
            </a>
            <a href="../UserHomePages/Contact.aspx" class="sub-menu-link">
              <i class="fas fa-question"></i>
              <p>Support</p>
              <span>></span>
            </a>
            <asp:LinkButton ID="logout" class="sub-menu-link" runat="server" OnClick="logout_Click">
               <i class="fas fa-sign-out-alt"></i>
              <p>Logout</p>
              <span>></span>
            </asp:LinkButton>
            <asp:LinkButton  ID="mode" style="cursor:pointer;" class="sub-menu-link" runat="server" OnClick="mode_Click">
                <i class="fas fa-moon"></i>
                <p id="darkModeBut" >Dark Mode</p>
                <span>></span>
            </asp:LinkButton>
          </div>
        </div>
    </div>
    <div id="menu-btn" class="fas fa-bars">
    </div>
    </section>

    <!-- nav  -->
    <div class="topnav">
      <a href="Feed.aspx"><i class="fa-solid fa-house"></i></a>
          <a href="profileUser.aspx"><i class="fa-solid fa-user"></i></a>
          <a href="Post.aspx"><i class="fa-solid fa-square-plus"></i></a>
          <a href="History.aspx"><i class="fa-solid fa-clock-rotate-left"></i></a>
          <a href="Settings.aspx"><i class="fa-solid fa-gear"></i></a>
      </div> 
    <!-- nav  -->
    <div class="table-container">
      <h2 class="table-heading">History</h2>
        <asp:GridView ID="hist" runat="server"></asp:GridView>
        <center><asp:Label ID="warn" runat="server" Text=""></asp:Label></center>
    </div>
        <span class="up"><i class="fas fa-arrow-up"></i></span>
        <script src="../js/goUpScript.js"></script>
    <script src="../js/historyScript.js"></script>
    <script src="../js/darkModeScript.js"></script>
    </form>
</body>
</html>
