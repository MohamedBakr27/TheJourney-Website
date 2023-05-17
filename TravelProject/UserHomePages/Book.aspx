<%@ Page Title="" UnobtrusiveValidationMode="none" Language="C#" MasterPageFile="~/UserHomePages/UserHomePages.Master" AutoEventWireup="true" CodeBehind="Book.aspx.cs" Inherits="TravelProject.UserHomePages.NewFolder1.Book" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Book
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="styles" runat="server">
    <link rel="stylesheet" href="../css/styleBookU.css" />
    <link rel="stylesheet" href="../css/goUpStyle.css"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="navbarActive" runat="server">
    <a  href="Home.aspx">Home</a>
    <a href="About.aspx">About</a>
    <a class="active" href="Book.aspx">Book</a>
    <a href="Contact.aspx">Contact</a>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">
    <div class="headding" style="background: url(../img/Traveling.jpeg) no-repeat;">
      <h1>Booking</h1>
    </div>

    
    <!-- Booking Start -->
    <section class="booking">
      <h1 class="heading-title">Book Your Trip</h1>
      <div id="form" action="" method="post" class="book-form">
        <div class="flex">

          <div class="inputBox">
            <span>Name: </span>
            <asp:TextBox ID="name" ValidationGroup="bookValid" placeholder="Your Name" name="name" runat="server"></asp:TextBox>
            <div class="error"><asp:RequiredFieldValidator ValidationGroup="bookValid" ID="nameValid" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" Text="Name Required" ControlToValidate="name"></asp:RequiredFieldValidator></div>
          </div>

          <div class="inputBox">
            <span>Address: </span>
            <asp:TextBox ID="address" ValidationGroup="bookValid" placeholder="Your Address"  name="Address" runat="server"></asp:TextBox>
            <div class="error"><asp:RequiredFieldValidator ValidationGroup="bookValid" ID="addressValid" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" Text="Address Required" ControlToValidate="address"></asp:RequiredFieldValidator></div>
          </div>
          
          <div class="inputBox-country">
            <span class="span">Where To: </span>
            <div class="Country-select">
              <asp:DropDownList ID="select1" class="Select" runat="server">
              </asp:DropDownList>
            </div>
          </div>
          <div class="inputBox-country">
            <span class="span">From: </span>
            <div class="Country-select">
              <asp:DropDownList ID="select2" class="Select" runat="server">
              </asp:DropDownList>
               </div>
              </div>
          <div class="inputBox">
            <span>Arrivals: </span>
            <asp:TextBox ID="arrivals" ValidationGroup="bookValid" TextMode="Date" name="Arrivals" runat="server"></asp:TextBox>
            <div class="error"><asp:RequiredFieldValidator ValidationGroup="bookValid" ID="arrivalsValid" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" Text="Arrivals Required" ControlToValidate="arrivals"></asp:RequiredFieldValidator>
          </div></div>
          <div class="inputBox">
            <span>Leaving: </span>
            <asp:TextBox ID="leaving" TextMode="Date" name="Leaving" runat="server" ValidationGroup="bookValid"></asp:TextBox>
            <div class="error"><asp:RequiredFieldValidator ID="leavingValid" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" Text="Leaving Required" ControlToValidate="leaving" ValidationGroup="bookValid"></asp:RequiredFieldValidator></div>
          </div>
        </div>
        <asp:Button ID="bookBut" ValidationGroup="bookValid" runat="server" class="btn" name="send" Text="submit" OnClick="bookBut_Click"/>
      </div>
    </section>
    <!-- Booking End -->
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="scripts" runat="server">
    <script src="../js/goUpScript.js"></script>
    <script src="../js/scriptBookU.js"></script>
    <script src="../js/darkModeScript.js"></script>
    <script src="../js/scriptPaymentU.js"></script>
</asp:Content>
