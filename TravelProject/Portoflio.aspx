<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Portoflio.aspx.cs" Inherits="TravelProject.Portoflio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <title>Team</title>
    <link rel="stylesheet" href="css/portoflioStyle.css"/>
    <link rel="stylesheet" href="css/style.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <!-- Fontawesome Link for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
    <div class="tit"><h3>Team Profile</h3></div>
      <i id="left" class="fa-solid fa-angle-left"></i>
      <ul class="carousel">
        <li class="card">
          <div class="person" style="--color: #37375e">
            <div class="container">
              <div class="container-inner">
                <div class="circle"></div>
                <img src="img/Ahmed.png"/>
              </div>
            </div>
            <div class="divider"></div>
            <h1>Ahmed Kamel</h1>
            <p>Front-End Developer</p>
          </div>
        </li>
        <li class="card">
          <div class="person" style="--color: #3e6e7c">
            <div class="container">
              <div class="container-inner">
                <div class="circle"></div>
                <img src="img/mesmary.png"/>
              </div>
            </div>
            <div class="divider"></div>
            <h1>Mohamed Bakr</h1>
            <p>Full-Stack Developer</p>
          </div>
        </li>
        <li class="card">
          <div class="person" style="--color: #782a2b">
            <div class="container">
              <div class="container-inner">
                <div class="circle"></div>
                <img src="img/M.Dahma.png"/>
              </div>
            </div>
            <div class="divider"></div>
            <h1>Mahmoud Ashraf</h1>
            <p>Front-End Developer</p>
          </div>
        </li>
        <li class="card">
          <div class="person" style="--color: #782a2b">
            <div class="container">
              <div class="container-inner">
                <div class="circle"></div>
                <img src="img/Hamoksha2.png"/>
              </div>
            </div>
            <div class="divider"></div>
            <h1>Mohamed Ahmed</h1>
            <p>Back-End Developer</p>
          </div>
        </li>
        <li class="card">
          <div class="person" style="--color: #37375e">
            <div class="container">
              <div class="container-inner">
                <div class="circle"></div>
                <img src="img/rawan.png"/>
              </div>
            </div>
            <div class="divider"></div>
            <h1>Rawan Kamal</h1>
            <p>Front-End Developer</p>
          </div>
        </li>
        <li class="card">
          <div class="person" style="--color: #3e6e7c">
            <div class="container">
              <div class="container-inner">
                <div class="circle"></div>
                <img src="img/medhat.png"/>
              </div>
            </div>
            <div class="divider"></div>
            <h1>Mohamed Medhat</h1>
            <p>Database Developer</p>
          </div>
        </li>
      </ul>
      <i id="right" class="fa-solid fa-angle-right"></i>
    </div>
    <script src="js/portfolioScript.js"></script>
    </form>
</body>
</html>
