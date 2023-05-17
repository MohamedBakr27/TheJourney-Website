<%@ Page Title="" UnobtrusiveValidationMode="none" Language="C#" MasterPageFile="~/AdminPages/AdminPages.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="TravelProject.AdminPages.NewFolder1.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="style" runat="server">
    <link rel="stylesheet" href="../css/styleDashboard.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="title" runat="server">
    Dashboard
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="navbarActive" runat="server">
                <a href="Dashboard.aspx" class="btn active">
                    <i class="fa-solid fa-user"></i>
                    <h3>Dashboard</h3>
                </a>
                <a href= "Messages.aspx" class="btn">
                    <i class="fa-solid fa-envelope"></i>
                    <h3>Messages</h3>
                    <asp:Label ID="msgCnt" runat="server" class="message-count"></asp:Label>
                </a>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">
    <!-- Start Main section -->
        <main>
            <h1>Dashboard</h1>
            <div class="insights">
                <!-- Start Sales -->
                <div class="customers">
                    <i class="fa-sharp fa-solid fa-chart-simple"></i>
                    <div class="middle">
                        <div class="left">
                            <h3 class="eH3">Happy Customers</h3>
                            <asp:Label ID="hapC" runat="server"><h1>$0</h1></asp:Label>
                        </div>  
                    </div>
                </div>
                <!-- End Sales -->
                <!-- Start Expenses -->
                <div class="earning">
                    <i class="fa-solid fa-circle-dollar-to-slot"></i>
                    <div class="middle">
                        <div class="left">
                            <h3 class="eH3">Total Earning</h3>
                            <asp:Label ID="earnS" runat="server"></asp:Label>
                        </div>
                    </div>
                </div>
                <!-- End Expenses -->
                <!-- Start Income -->
                <div class="destination">
                    <i class="fa-solid fa-plane"></i>
                    <div class="middle">
                        <div class="left">
                            <h3 class="eH3">Destination Collaborations</h3>
                            <asp:Label ID="distC" runat="server"><h1>0</h1></asp:Label>
                        </div>
                    </div>
                </div>
                <!-- End Income -->
            </div>
            <div class="recent-reservations">
                <h2>Recent Reservations</h2>
                <asp:GridView ID="hist" CellSpacing="-1" runat="server"></asp:GridView>
                <center><asp:Label ID="warn" class="warn" runat="server" Text=""></asp:Label></center>
                <a href="HistoryAdmin.aspx">Show All</a>
            </div>
        </main>
        <!-- End Main section -->
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="script" runat="server">
    <script src="../js/scriptDashboard.js"></script>
</asp:Content>
