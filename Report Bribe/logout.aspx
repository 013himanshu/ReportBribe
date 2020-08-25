<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="logout.aspx.cs" Inherits="Report_Bribe.logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Logout | Report Bribe Online</title>
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
        .progress {
            background-color: #039be52e;
        }
        .progress .indeterminate {
            background-color:#039BE5;
        }
    </style>
</head>
<body>
    <div class="container" style="width:30%;">
        <div class="row col s12">
            <h4 class="center-align">Logging out, please wait.</h4>
        </div>
        <div class="progress">
            <div class="indeterminate"></div>
        </div>
    </div>
</body>
</html>
