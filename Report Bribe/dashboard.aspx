<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="Report_Bribe.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard | Report Bribe Online</title>
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


    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <style type="text/css">
        .datepicker-date-display {
            background-color: #03A9F4 !important;
        }
        .input-field {
            width:60% !important;            
        }
    </style>
</head>
<body style="background-color:#f1f3f6 !important">
    <nav class="main-color-bg">
        <div class="nav-wrapper">
          <a href="#!" class="brand-logo">Report Bribe</a> 
          <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
          <ul class="right hide-on-med-and-down">
            <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/logout.aspx">Logout</asp:HyperLink></li>
            <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/account.aspx">Account</asp:HyperLink></li>  
            <li><a href="#">About</a></li>          
            <li><a href="#">Contact</a></li>
          </ul>
        </div>
    </nav>
    <ul class="sidenav" id="mobile-demo">
        <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/logout.aspx">Logout</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/account.aspx">Account</asp:HyperLink></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Contact</a></li>
    </ul>

    <div class="container" style="padding:10px;">
        <div class="row">
            <div class="card z-depth-1" style="padding:20px;">
                <h5 class="left-align">Welcome! <asp:Label ID="UserNameLabel" runat="server" Text=""></asp:Label></h5>
                <br /><br />

                <div class="row">
                    <h6>Report Bribe Here</h6>
                    <form id="form2" runat="server">
                        <div class="input-field col s12">
                            <asp:TextBox ID="Title" runat="server"></asp:TextBox>
                            <label for="Title">Title</label> 
                        </div>
                        <div class="input-field col s12 m12 l12">
                            <asp:TextBox ID="Description" runat="server" MaxLength="500"></asp:TextBox>
                            <label for="Description">Description</label> 
                        </div>
                        <div class="input-field col s12 m12 l12">
                            <asp:TextBox ID="Date" runat="server" CssClass="datepicker"></asp:TextBox>
                            <label for="Date">Date</label> 
                        </div>
                        <div class="input-field col s12 m12 l12">
                            <asp:Label ID="SubmitLabel" runat="server" Text="The complaint was successfully submitted." Visible="False"></asp:Label>
                        </div>
                        <div class="input-field col s12 m12 l12">
                            <asp:Button ID="Submit" runat="server" CssClass="waves-effect waves-light btn-large accent-color-bg right" Text="Submit" OnClick="Submit_Click" />
                        </div>                                              
                    </form>
                </div>                

            </div>
        </div>
    </div>
   

    <!--Navbar Trigger Script-->
    <script>
        $(document).ready(function () {
            $('.sidenav').sidenav();
        });
    </script>
    <!-- Date Picker Script -->
    <script>
        $(document).ready(function () {
            $('.datepicker').datepicker({
                format: "yyyy/mm/dd"
            });
        });
    </script>
</body>
</html>
