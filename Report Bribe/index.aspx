<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Report_Bribe.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Report Bribe Online | Help the country to be corruption free</title>

    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css"/>
    <!--Import JQuery-->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <!--JavaScript at end of body for optimized loading-->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    
    <!--Import styles.css-->
    <link href="css/styles.css" rel="stylesheet" />
    <!-- Import index.css -->
    <link href="css/index.css" rel="stylesheet" />

    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

</head>
<body>

   <nav class="main-color-bg">
    <div class="nav-wrapper">
      <a href="#!" class="brand-logo">Report Bribe</a>
      <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
      <ul class="right hide-on-med-and-down">
        <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/login.aspx">Login</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/register.aspx">Register</asp:HyperLink></li>          
        <li><a href="#">About</a></li>          
        <li><a href="#">Contact</a></li>
      </ul>
    </div>
  </nav>

  <ul class="sidenav" id="mobile-demo">
    <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/login.aspx">Login</asp:HyperLink></li>
    <li><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/register.aspx">Register</asp:HyperLink></li>
    <li><a href="#">About</a></li>
    <li><a href="#">Contact</a></li>
  </ul>

    <div class="parallax-container">
        <div class="parallax">
            <img src="images/bribe-img.jpg" />
        </div>
    </div>

    <div class="container center-align">
        <h3>Say No To Bribe !</h3>
    </div>
    <br />
    <div class="container center-align">
        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="waves-effect waves-light btn-large accent-color-bg" NavigateUrl="~/register.aspx">Register Now To File Complaint</asp:HyperLink>
    </div>

    <br /><br />

    <!-- Card Section -->
    <div class="container">
        <div class="row">
            
            <!--What is bribery card-->
            <div class="col s12 m6">
                <div class="card small hoverable">
                    <div class="card-content">
                        <span class="card-title opt-color-txt">Bribe ?</span>
                        <p>Dishonestly persuade someone to act in one's favour by a gift of money or inducement.</p>
                    </div>                   
                </div>
            </div>            
            <!--Types of bribery card-->
            <div class="col s12 m6">
                <div class="card small hoverable">                                        
                        <div class="card-content">
                            <span class="card-title opt-color-txt">Types Of Bribery</span>
                            <p>
                                <ul>
                                    <li>Active Bribery</li>
                                    <li>Passive Bribery</li>
                                </ul>
                            </p>
                        </div>                    
                </div>
            </div>

            <!--Causes Card-->
            <div class="col s12 m6">
                <div class="card small hoverable">
                    
                        <div class="card-content">
                            <span class="card-title opt-color-txt">Causes</span>
                            <p>
                                <ul>
                                    <li>Low Salaries</li>
                                    <li>Personal Greed</li>
                                    <li>Etc.</li>
                                </ul>
                            </p>
                        </div>
                  </div>                
            </div>
            <!--Remedies Card-->
            <div class="col s12 m6">
                <div class="card small hoverable">                    
                        <div class="card-content">
                            <span class="card-title opt-color-txt">Remedies</span>
                            <p>
                                <ul>
                                    <li>Supremacy of law.</li>
                                    <li>Proper awareness.</li>
                                    <li>Strengthening of institutions.</li>
                                </ul>
                            </p>
                        </div>
                    </div>                
            </div>

        </div>
    </div>
    <!-- ** -->

    <br />
    <!-- Stats Section -->
    <div class="container">
        <div class="row">
            <h4>Some Statistics</h4>
            <div class="carousel carousel-slider">
                <a class="carousel-item" href="#one!"><img src="images/carousel1.jpg" /></a>
                <a class="carousel-item" href="#two!"><img src="images/carousel2.jpg" /></a>
                <a class="carousel-item" href="#three!"><img src="images/carousel3.jpg" /></a>
                <a class="carousel-item" href="#four!"><img src="images/carousel4.jpg" /></a>
            </div>
        </div>
    </div>
    <!-- ** -->

    <br />
    <!-- Footer Section -->
    <footer class="page-footer">
          <div class="container">
            <div class="row">
              <div class="col l6 s12">
                <h5 class="white-text">Report Bribe Online</h5>
                <p class="grey-text text-lighten-4">Register Now to file a complaint against bribery and make our country corruption free. Your issue will be solved within 48 working hours. So, say no to bribe &amp; say it loud.</p>
              </div>
              <div class="col l4 offset-l2 s12">
                <h5 class="white-text">Links</h5>
                <ul>
                  <li><a class="grey-text text-lighten-3" href="#!">Policies</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!">Terms &amp; Conditions</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!">FAQ</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!">Disclaimer</a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="footer-copyright">
            <div class="container center-align">
                &copy; 2020 Report Bribe Online, All rights reserved.            
            </div>
          </div>
    </footer>
    


    

    <!--Navbar Trigger Script-->
    <script>
        $(document).ready(function () {
            $('.sidenav').sidenav();
        });
    </script>

    <!--Parallax Script-->
    <script type="text/javascript">
        $(document).ready(function () {
            $('.parallax').parallax();
        });
    </script>
    
    <!-- Carousel Script -->
    <script type="text/javascript">
        $('.carousel.carousel-slider').carousel({
            fullWidth: true,
            indicators: true
        });
    </script>
    
  

</body>
</html>
