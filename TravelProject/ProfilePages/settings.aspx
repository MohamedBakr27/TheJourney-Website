<%@ Page Language="C#" UnobtrusiveValidationMode="none" AutoEventWireup="true" CodeBehind="settings.aspx.cs" Inherits="TravelProject.ProfilePages.settings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Settings</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"/>
    <!-- Font awesome cdn link -->
    <script src="https://kit.fontawesome.com/a46a1ee543.js" crossorigin="anonymous"></script>
    <link rel="stylesheet"href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
    <link rel="stylesheet" href="../css/settingsStyle.css"/>
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
        <asp:Image ID="userpic1" onclick="toggleMenu()" class="use-pic" ImageUrl="../img/user.jpg" runat="server" />
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
    <div class="full">
        <h1>Settings</h1>
            <!-- <a class="button" href="#">Save</a> -->
        <div class="settings-page">  
            <!-- Start info container  -->
    <div class="container">
        <h2 class="con-title">General Info</h2>
            <!-- model -->
        <p class="con-caption">General Information About Your Account</p>
        <div class="box">
            <label class="lab" for="first">First Name</label>
            <asp:TextBox class="in" id="first" placeholder="First Name" runat="server"></asp:TextBox>
        </div>
        <div class="box">
            <label class="lab" for="last">Last Name</label>
            <asp:TextBox class="in" id="last" placeholder="Last Name" runat="server"></asp:TextBox>
        </div>
        <div class="box">
            <label class="lab" for="email">Email</label>
            <asp:TextBox id="email" class="in" TextMode="Email" placeholder="Email" runat="server"></asp:TextBox>
        </div>
    </div>
    <!-- End info container Box -->
    <!-- Start edit photo  -->
    <div class="container">
        <h2>Profile Picture</h2>
            <!-- model -->
        <p class="con-caption">Edit Your Picture</p>   
        <div class="box">
          <div class="pic-cont2">
            <div class="avatar-upload2">
                <div class="avatar-preview2">
                    <asp:Image ID="imagePreview2" runat="server" />
                </div>  
            </div>
          </div>  
        </div>
        <div class="box">
          <div class="pic-cont">
            <div class="avatar-upload">
                <div class="avatar-preview">
                    <asp:Image ID="imagePreview1" runat="server" />
                </div>  
            </div>
          </div>  
        </div>
        <p class="con-caption">Choose Profile Picture</p>
        <asp:FileUpload ID="profilePath" accept=".png, .jpg, .jpeg" runat="server" />
    </div>
    <!-- End edit photo -->

    <!-- Start password Box -->
    <div class="container">
        <h2>Save All Changes</h2>
        <!-- model -->
        <p class="con-caption">Modify Account Settings</p>
        <div class="box">
            <div class="box">
                <label class="lab" for="last">Enter old Password to save</label>
                <asp:TextBox id="confPass" class="in" TextMode="Password" placeholder="New password" runat="server"></asp:TextBox>
                <asp:Button CssClass="btn" ForeColor="Black" ID="conf" runat="server" Text="Save Changes" OnClick="conf_Click" />
                 <asp:Label ID="warn1" ForeColor="Red" style="text-align:center;font-size:12px;" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </div>
    <!-- End password box  -->
        <div class="container">
        <h2>Security Info</h2>
        <!-- model -->
        <p class="con-caption">Password</p>
        <div class="box">
            <div class="box">
                <label class="lab" for="last">New Password</label>
                <asp:TextBox id="pass1" class="in" TextMode="Password" placeholder="New password" runat="server"></asp:TextBox>
            </div>
            <div class="box">
                <label class="lab" for="last">Confirm New Password</label>
                <asp:TextBox id="pass2" class="in" TextMode="Password" placeholder="Confirm password" runat="server"></asp:TextBox>
            </div>
            <asp:Label ID="warn" style="color:red;text-align:center;font-size:12px;" runat="server" Text=""></asp:Label>
        </div>
    </div>
    </div>
    </div>
        <span class="up"><i class="fas fa-arrow-up"></i></span>
        <script src="../js/goUpScript.js"></script>
    <script src="../js/settingsScript.js"></script>
    <script src="../js/darkModeScript.js"></script>
    </form>
</body>
</html>
