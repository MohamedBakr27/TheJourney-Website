<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="none" MasterPageFile="~/UserHomePages/UserHomePages.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="TravelProject.UserHomePages.NewFolder1.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Home
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="styles" runat="server">
    <link rel="stylesheet" href="../css/styleHomeU.css"/>
    <link rel="stylesheet" href="../css/goUpStyle.css"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="navbarActive" runat="server">
    <a class="active" href="Home.aspx">Home</a>
    <a href="About.aspx">About</a>
    <a href="Book.aspx">Book</a>
    <a href="Contact.aspx">Contact</a>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">
    <!-- Home Start -->
    <section class="home">
      <div class="swiper home-slider">
        <div class="swiper-wrapper">
          <div class="swiper-slide slide" style="background: url(../img/sh-header.jpeg) no-repeat;">
            <div class="content">
              <span>Explore, Discover, Travel</span>
              <h3>Travel around the world</h3>
              <a href="#discoV" class="btn"> discover more</a>
            </div>
          </div>
          <div class="swiper-slide slide" style="background: url(../img/travel2.jpeg) no-repeat;">
            <div class="content">
              <span>Explore, Discover, Travel</span>
              <h3>Discover New Places</h3>
              <a href="#discoV" class="btn"> discover more</a>
            </div>
          </div>
          <div class="swiper-slide slide" style="background: url(../img/sh-header2.jpeg) no-repeat;">
            <div class="content">
              <span>Explore, Discover, Travel</span>
              <h3>Make Your Tour Worthwhile </h3>
              <a href="#discoV" class="btn"> discover more</a>
            </div>
          </div>
        </div>
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
      </div>
    </section>
    <!-- Home End -->
    <!-- Services Section Start -->
    <section class="services">
      <h1 class="heading-title">Our services</h1>
        <div class="box-container">
          <div class="box">
            <img src="../img/mountain.png" alt="" />
            <h3>Adventure</h3>
          </div>
          <div class="box">
            <img src="../img/maps2.png" alt="" />
            <h3>Tour Guide</h3>
          </div>
          <div class="box">
            <img src="../img/track.png" alt="" />
            <h3>Tracking</h3>
          </div>
          <div class="box">
            <img src="../img/fire.png" alt="" />
            <h3>Camp Fire</h3>
          </div>
          <div class="box">
            <img src="../img/dire.png" alt="" />
            <h3>Off Road</h3>
          </div>
          <div class="box">
            <img src="../img/home2.png" alt="" />
            <h3>Camping</h3>
          </div>
        </div>
    </section>
    <!-- Services Section End -->
    <!-- Home about start -->
    <section class="home-about">
      <div class="image">
        <img src="../img/us.jpg" alt=""/>
      </div>
      <div class="content">
        <h3>About us</h3>
        <p>this site have all what you need from booking,good places to visit,
          suitable prices & suitable flight schedules.
          if you are enjoying traveling around the world & have beautiful
           memories by making a custom profile for you this is the right place.
          sign in now, what are you waiting for?
        </p>
           <a href="About.aspx" class="btn">Read More</a>
      </div>
    </section>
    <!-- Home about End -->
    <!-- Home Packages Start -->
    <section class="home-packages">
      <h1 class="heading-title" id="discoV">Our Packages</h1>
      <div class="box-container">
        <div class="box">
          <div class="image">
            <img src="../img/mosqe.jpeg" alt=""/>
          </div>
          <div class="content">
            <h3>Adventure & Tour</h3>
            <p>Go to San Fernando city & visit the Golden Mosque.</p>
            <a href="Book.aspx" class="btn">Book Now</a>
          </div>
        </div>
        <div class="box">
          <div class="image">
            <img src="../img/big-ben2.jpeg" alt=""/>
          </div>
          <div class="content">
            <h3>Adventure & Tour</h3>
            <p>visit England and might have a chance to see the big ben.</p>
            <a href="Book.aspx" class="btn">Book Now</a>
          </div>
        </div>
        <div class="box">
          <div class="image">
            <img src="../img/eiffel.jpeg" alt=""/>
          </div>
          <div class="content">
            <h3>Adventure & Tour</h3>
            <p>A trip to france to see the eiffel tower closely.</p>
            <a href="Book.aspx" class="btn">Book Now</a>
          </div>
        </div>
        <div class="box">
          <div class="image">
            <img src="../img/pyramids.jpeg" alt=""/>
          </div>
          <div class="content">
            <h3>Adventure & Tour</h3>
            <p>visit egypt and watch the pyramids, one of the most wonders of the world.</p>
            <a href="Book.aspx" class="btn">Book Now</a>
          </div>
        </div>
        <div class="box">
          <div class="image">
            <img src="../img/Germany.jpeg" alt=""/>
          </div>
          <div class="content">
            <h3>Adventure & Tour</h3>
            <p>a trip to germany to see neuschwanstein castle.</p>
            <a href="Book.aspx" class="btn">Book Now</a>
          </div>
        </div>
        <div class="box">
          <div class="image">
            <img src="../img/japan.jpeg" alt=""/>
          </div>
          <div class="content">
            <h3>Adventure & Tour</h3>
            <p>a trip to japan to see the mount fuji, you do not want to miss it.</p>
            <a href="Book.aspx" class="btn">Book Now</a>
          </div>
        </div>
        <div class="box">
          <div class="image">
            <img src="../img/maldives2.jpeg" alt=""/>
          </div>
          <div class="content">
            <h3>Adventure & Tour</h3>
            <p>book to the maldives, one of the most beautiful island in the world.</p>
            <a href="Book.aspx" class="btn">Book Now</a>
          </div>
        </div>
        <div class="box">
          <div class="image">
            <img src="../img/holly.jpeg" alt=""/>
          </div>
          <div class="content">
            <h3>Adventure & Tour</h3>
            <p>book a trip to LA and visit hollywood, of course you will not miss that</p>
            <a href="Book.aspx" class="btn">Book Now</a>
          </div>
        </div>
        <div class="box">
          <div class="image">
            <img src="../img/statue.jpg" alt=""/>
          </div>
          <div class="content">
            <h3>Adventure & Tour</h3>
            <p>book to us and see the statue of liberty & understand american's culture.</p>
            <a href="Book.aspx" class="btn">Book Now</a>
          </div>
        </div>
        <div class="box">
          <div class="image">
            <img src="../img/veags.jpeg" alt=""/>
          </div>
          <div class="content">
            <h3>Adventure & Tour</h3>
            <p>if you are already love america you will surly visit las vegas.</p>
            <a href="Book.aspx" class="btn">Book Now</a>
          </div>
        </div>
        <div class="box">
          <div class="image">
            <img src="../img/italyjpeg.jpeg" alt=""/>
          </div>
          <div class="content">
            <h3>Adventure & Tour</h3>
            <p>book a trip to italy the country of elegance & beauty.</p>
            <a href="Book.aspx" class="btn">Book Now</a>
          </div>
        </div>
        <div class="box">
          <div class="image">
            <img src="../img/indonisia.jpeg" alt=""/>
          </div>
          <div class="content">
            <h3>Adventure & Tour</h3>
            <p>visit indonesia and sea charming views & beautiful people.</p>
            <a href="Book.aspx" class="btn">Book Now</a>
          </div>
        </div>
      </div>
      <!-- <div class="load-more"><a href="packages.aspx" class="btn">Load More</a></div> -->
    </section>
    <!-- Home Packages End -->
    <!-- Home Offers Start -->
    <section class="home-offer">
      <div class="content">
        <h3>Upto 50% off</h3>
        <p>
          Amazing offers await you, book with us now
           for a limited period at half the price and
            you will find other surprises waiting for you.</p>
            <a href="Book.aspx" class="btn">Book Now</a>
      </div>
    </section>
    <!--Home Offers End -->
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="scripts" runat="server">
    <script src="../js/goUpScript.js"></script>
    <script src="../js/scriptHomeU.js"></script>
    <script src="../js/darkModeScript.js"></script>
</asp:Content>
