<%@ Page Title="" UnobtrusiveValidationMode="none" Language="C#" MasterPageFile="~/AdminPages/AdminPages.Master" AutoEventWireup="true" CodeBehind="Messages.aspx.cs" Inherits="TravelProject.AdminPages.NewFolder1.Messages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="style" runat="server">
    <link rel="stylesheet" href="../css/styleMessages.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="title" runat="server">
    Messages
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="navbarActive" runat="server">
    <a href="Dashboard.aspx" class="btn">
                    <i class="fa-solid fa-user"></i>
                    <h3>Dashboard</h3>
                </a>
                <a href="Messages.aspx" class="btn active">
                    <i class="fa-solid fa-envelope"></i>
                    <h3>Messages</h3>
                    <asp:Label ID="msgCnt" runat="server" class="message-count"></asp:Label>
                </a>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">
     <!-- Start Main section -->
        <main>
            <h1>Messages</h1>
            <div class="message-box">
                <div class="top">
                    <div class="right">
                        <div class="text">
                            <h2> Admin</h2>
                            <p class="text-muted">Mohamed Bakr</p>
                        </div>
                    </div>
                </div>
                <hr/>
                    <asp:Panel class="messages" ID="msgs" runat="server">
                        <asp:ListView ID="msgsBlock"  runat="server" DataSourceID="msgsData" OnItemCommand="msgsBlock_Click">
                            <ItemTemplate>
                                <div class="block">
                                    <div class="right">
                                        <img src="<%# Eval("Profile_Picture") %>" alt=""/>
                                        <div class="text">
                                            <h2><%# Eval("Name") %></h2>
                                            <p class="text-muted"><%# Eval("MsgContent") %></p>
                                            <small class="text-muted"><%# Eval("MsgDATE") %></small>
                                        </div>
                                    </div>
                                    <div class="left">
                                        <asp:Button ID="butRemove" runat="server" Text="Delete" CommandName="remove" CommandArgument='<%# Eval("MsgID") %>' />
                                    </div>
                                 </div>
                            </ItemTemplate>
                        </asp:ListView>
                    <asp:SqlDataSource ID="msgsData" runat="server" ConnectionString="Data Source=DESKTOP-IOITRQL;Initial Catalog=Travel;Integrated Security=True" SelectCommand="select MsgID,MsgDATE,MsgContent,MsgTitle,userNameFrom,Fname+' '+Lname[name],Profile_Picture from Msgs left outer join Users on Users.userName = Msgs.userNameFrom order by MsgDATE desc" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
                </asp:Panel>
            </div>
        </main>
        <!-- End Main section -->
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="script" runat="server">
    <script src="../js/scriptMessages.js"></script>
</asp:Content>
