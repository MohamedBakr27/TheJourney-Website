<%@ Page Title="" UnobtrusiveValidationMode="none" Language="C#" MasterPageFile="~/AdminPages/AdminPages.Master" AutoEventWireup="true" CodeBehind="HistoryAdmin.aspx.cs" Inherits="TravelProject.AdminPages.NewFolder1.HistoryAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="style" runat="server">
    <link rel="stylesheet" href="../css/styleHistoryAdmin.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="title" runat="server">
    Reservation History
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="navbarActive" runat="server">
    <a href="Dashboard.aspx" class="btn">
                    <i class="fa-solid fa-user"></i>
                    <h3>Dashboard</h3>
                </a>
                <a href="Messages.aspx" class="btn">
                    <i class="fa-solid fa-envelope"></i>
                    <h3>Messages</h3>
                    <asp:Label ID="msgCnt" runat="server" class="message-count"></asp:Label>
                </a>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">
    <main>
             <div class="recent-reservations">
                <h2>Reservations</h2>
                <asp:GridView ID="hist" CellSpacing="-1" runat="server"></asp:GridView>
                 <center><asp:Label ID="warn" class="warn" style="font-size:30px;" runat="server" Text=""></asp:Label></center>
            </div>
        </main>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="script" runat="server">
    <script src="../js/scriptHistoryAdmin.js"></script>
</asp:Content>
