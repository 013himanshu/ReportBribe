<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="account.aspx.cs" Inherits="Report_Bribe.account" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Account | Report Bribe Online</title>
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
</head>
<body style="background-color:#f1f3f6 !important">
    <nav class="main-color-bg">
        <div class="nav-wrapper">
          <a href="#!" class="brand-logo">Report Bribe</a> 
          <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
          <ul class="right hide-on-med-and-down">
            <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/logout.aspx">Logout</asp:HyperLink></li>
            <li><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/account.aspx">Account</asp:HyperLink></li>  
            <li><a href="#">About</a></li>          
            <li><a href="#">Contact</a></li>
          </ul>
        </div>
    </nav>
    <ul class="sidenav" id="mobile-demo">
        <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/logout.aspx">Logout</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/account.aspx">Account</asp:HyperLink></li>        
        <li><a href="#">About</a></li>
        <li><a href="#">Contact</a></li>
    </ul>


    <div class="container" style="padding:10px;">
        <div class="row">
            <div class="card z-depth-1" style="padding:20px;">
                <h5 class="left-align">Your Account</h5>
                <br /><br />

                <div class="row">
                    <h6>Previous Complaints</h6>
                    <form id="form2" runat="server">                        
                        <div class="input-field col s12 m12 l12">                            
                            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" />
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />                                
                            </asp:GridView>
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
    
</body>
</html>
