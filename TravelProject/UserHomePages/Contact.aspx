<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="none" MasterPageFile="~/UserHomePages/UserHomePages.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="TravelProject.UserHomePages.NewFolder1.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Contact
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="styles" runat="server">
    <link rel="stylesheet" href="../css/styleContactU.css" />
    <link rel="stylesheet" href="../css/goUpStyle.css"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="navbarActive" runat="server">
    <a href="Home.aspx">Home</a>
          <a href="About.aspx">About</a>
          <a href="Book.aspx">Book</a>
          <a class="active" href="Contact.aspx">Contact</a>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">
    <div class="headding" style="background: url(../img/know.jpeg) no-repeat;">
      <h1>Contact Us</h1>
    </div>
    <!-- Contact Start -->
    <section class="contact-section">
      <h3 class="title">Contact Us</h3>
      <div class="contact">
          <div class="contact-info">
              <img src="../img/undraw_messenger_re_8bky.svg" />
          </div>
          <div class="form">
            <div class="form2" action="">
              <span>LEAVE A MESSAGE</span>
              <h2>We love to hear from you</h2>
              <asp:TextBox ID="name" placeholder="Your Name" required="required" runat="server"> </asp:TextBox>
              <asp:TextBox ID="email" TextMode="Email" placeholder="Email" required="required" runat="server"></asp:TextBox>
              <asp:TextBox ID="title" placeholder="Subject" required="required" runat="server"></asp:TextBox>
              <asp:TextBox ID="content" TextMode="MultiLine" required="required" cols="20" rows="5" placeholder="Your Message" runat="server"></asp:TextBox>
              <asp:Button ID="send" class="normal" style="cursor:pointer;" runat="server" Text="Send" OnClick="send_Click" />
            </div>
          </div>
      </div>
  </section>
    <!-- Contact End -->
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="scripts" runat="server">
    <script src="../js/goUpScript.js"></script>
    <script src="../js/scriptContactU.js"></script>
    <script src="../js/darkModeScript.js"></script>
</asp:Content>
