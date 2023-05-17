<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="none" MasterPageFile="~/UserHomePages/UserHomePages.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="TravelProject.UserHomePages.NewFolder1.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    About
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="styles" runat="server">
    <link rel="stylesheet" href="../css/styleAboutU.css" />
    <link rel="stylesheet" href="../css/goUpStyle.css"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="navbarActive" runat="server">
    <a href="Home.aspx">Home</a>
    <a class="active"  href="About.aspx">About</a>
    <a href="Book.aspx">Book</a>
    <a href="Contact.aspx">Contact</a>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">
    <div class="headding" style="background: url(../img/travel5.jpeg) no-repeat;">
      <h1>About us</h1>
    </div>
        <!-- About Start -->
        <section class="about">
          <div class="image">
            <img src="../img/travel9.jpeg" alt=""/>
          </div>
          <div class="content">
            <h3>why choose us?</h3>
            <p>this site is dedicated to people who are interested in travel & tourism.
              if you are one of these people, you will find here every thing you need
               from trips to the most famous tourist attractions in the world & you can
               create your own profile for having personal images & for having good memories.   
            </p>
                <div class="icon-container">
                  <div class="icon">
                    <i class="fas fa-map"></i>
                      <span>Top destinations</span>
                  </div>
                  <div class="icon">
                    <i class="fas fa-hand-holding-usd"></i>
                      <span>Affordable price</span>
                  </div>
                  <div class="icon">
                    <i class="fas fa-headset"></i>
                      <span>24/7 guide service</span>
                  </div>
                </div>
          </div>
        </section>
        <!-- About End -->
        <!-- Review Start -->
    <section class="reviews">
      <div class="swiper reviews-slider">
        <div class="swiper-wrapper">
          <div class="swiper-slide slide">
            <div class="stars">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
            </div>
            <p>absolute stunning site.
               i did not ever imagine that efficiency, good service & most importantly
               i never thought it will be that good.
               of course i give it 5 stars & recommend it
            </p>
                <h3>Keanu Reeves</h3>
                <span>Traveler</span>
                <img src="../img/rev.jpg" alt=""/>
          </div>
          <div class="swiper-slide slide">
            <div class="stars">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
            </div>
            <p>i have traveled to many places before & i have good experience of doing that,
              but this site is different & cool.
              i gave it 5 stars & recommend it to people who love journeys.
            </p>
                <h3>Chris Hemsworth</h3>
                <span>Traveler</span>
                <img src="../img/rev5.jpg" alt=""/>
          </div>
          <div class="swiper-slide slide">
            <div class="stars">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
            </div>
            <p>well not bad site & actually they have good stuff, also they have good price 😂.
              this journey always will be in the head.
              i give it 4 stars & of course i recommend it badly.</p>
               <h3>Jeffrey Dean Morgan</h3>
                <span>Traveler</span>
                <img src="../img/rev4.jpg" alt=""/>
          </div>
          <div class="swiper-slide slide">
            <div class="stars">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
            </div>
            <p>good trips & journeys, i loved it.
              this site is very good & creative.if you like different sites & ideas this site is good.
              i give it 4 stars & of course i recommend it.
            </p>
               <h3>chad michael murray</h3>
                <span>Traveler</span>
                <img src="../img/rev6.jpg" alt=""/>
          </div>
          <div class="swiper-slide slide">
            <div class="stars">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
            </div>
            <p>not all people can travel around the world, but if one of those how travel this site
              is magnificent & magic.
              i gave it 5 stars & of course i recommend it to you.
            </p>
               <h3>Sarah Gadon</h3>
                <span>Traveler</span>
                <img src="../img/rev7.jpg" alt=""/>
          </div>
          <div class="swiper-slide slide">
            <div class="stars">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
            </div>
            <p>this site is very good & have good stuff, but unfortunately, the places
              i wanted to approach all its tickets where out.
              i give it 3 stars , but it was very good thou.
            </p>
               <h3>Sarah Gadon</h3>
                <span>Traveler</span>
                <img src="../img/rev8.jpg" alt=""/>
          </div>
        </div>
      </div>
    </section>
    <!-- Review End -->
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="scripts" runat="server">
    <script src="../js/goUpScript.js"></script>
    <script src="../js/scriptAboutU.js"></script>
    <script src="../js/darkModeScript.js"></script>
</asp:Content>
