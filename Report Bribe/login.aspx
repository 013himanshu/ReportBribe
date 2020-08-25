<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Report_Bribe.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login | Report Bribe Online</title>
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
<body style="background-color: #03A9F4;">
     <div class="container">
         <div class="row">
             <div class="s12 center-align">
                 <h4 class="white-text">Login</h4>
             </div>
         </div>
     </div>
    <br />

    <div class="container">
        <div class="row">
            <div class="col s12" style="padding-right:15%;padding-left:15%;">
                <div class="card z-depth-2" style="padding:20px;">
                    <form id="loginForm" runat="server">
                        <div class="row">
                            <div class="input-field col s12">
                                <asp:TextBox ID="LoginEmailTxt" TextMode="Email" CssClass="validate" runat="server"></asp:TextBox>
                                <label for="LoginEmailTxt">Email</label>                                
                            </div>
                            <div class="input-field col s12">
                                <asp:TextBox ID="LoginPswTxt" runat="server" TextMode="Password"></asp:TextBox>
                                <label for="LoginPswTxt">Password</label>                              
                            </div>
                            <div class="col s12">
                                <asp:Label ID="ErrorLabel" runat="server" Text="Invalid username or password." Visible="False"></asp:Label>
                            </div>
                            <div class="input-field col s12 m2 l2">
                                <asp:Button ID="LoginBtn" runat="server" CssClass="waves-effect waves-light btn-large accent-color-bg" Text="Login" OnClick="LoginBtn_Click" />
                            </div>
                            <div class="input-field col s12 m10 l10">
                                <h6 class="left-align" style="padding:5px;">Need An account? <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/register.aspx">Register Here...</asp:HyperLink></h6>
                            </div>
                        </div>                        
                    </form>
                    
                </div>
            </div>
        </div>        
    </div>

</body>
</html>
