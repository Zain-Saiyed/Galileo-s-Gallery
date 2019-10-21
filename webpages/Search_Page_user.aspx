<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search_Page_user.aspx.cs" Inherits="GallileosGallery.Webpages.Search_Page_user" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Colorlib">
    <meta name="description" content="#">
    <meta name="keywords" content="#">
    <!-- Page Title -->
    <title>Search Page</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,700,900" rel="stylesheet">
    <!-- Simple line Icon -->
    <link rel="stylesheet" href="css/simple-line-icons.css">
    <!-- Themify Icon -->
    <link rel="stylesheet" href="css/themify-icons.css">
    <!-- Hover Effects -->
    <link rel="stylesheet" href="css/set1.css">
    <!-- Main CSS -->
    <link rel="stylesheet" href="css/style.css">

    <style>
        body {
        font-family: 'Roboto', sans-serif;
        color:white;
        background-image: url(../images/backg.jpg);
        background-size: cover;
        min-height: 800px;
        }
        .auto-style1 {
                    margin-left: 400px;
                }
        .Grid {
        background-color: #a0a0a0; 
        margin: 5px 0 10px 0; 
        border: solid 2px #525252; 
        border-collapse:collapse; 
        font-family:Bahnschrift;
        font-size:13px;
        color: ghostwhite;                 
        width:800px;                
        box-shadow: 0px 0px 150px 10px black;
        text-align:center;
        }
    .Grid td {
        padding: 2px; 
        border: solid 2px #484848; 
        box-shadow: 0px 0px 150px 110px black;
    }
    .Grid tr:nth-child(even) {
        height:35px;
        padding:5px 10px 5px 10px;
        background-color: #2e2e2e;
        box-shadow: 0px 0px 150px 101px black;
    }
    .Grid tr:nth-child(odd) {
        height:35px;
        padding:5px 10px 5px 10px;
        background-color: #484848;
        box-shadow: 0px 0px 150px 101px black;
    }
    .Grid th  {            
        padding : 4px 2px; 
        color:gold;
        background: #202020 ; 
        border-left: solid 2px #525252; 
        font-size: 16px; 
        box-shadow: 0px 0px 150px 101px black;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div>
            <br/><br/><br/>
            <!-- YOU GOTTA CHANGE THIS CODE (  <CENTER>  )-->
            <center><h1> Gallileo's Gallery</h1></center>
            <br/><br/>

            <center><asp:Label ID="Label3" runat="server" Text="Search Cosmic Objects:" Font-Bold="True" Font-Names="Times New Roman"></asp:Label></center>

            <br/><br/>
            <center>
                <div class="main col-md-2 col-md-offset-2">
                    <asp:Label ID="Label1"  runat="server" Text="Filter on Table Name: " ForeColor="White" Font-Bold="True"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddl_table_names" runat="server" ToolTip="Choose category of Cosmic Object" Width="140px" Font-Names="Arial Rounded MT Bold"></asp:DropDownList>  
                    <br/><br/>
            </center>        
            <div style="margin-left:300px;">
                <center><asp:TextBox ID="tb_search" runat="server" Width="380px"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_search" class="btn-block" style="background-color:#ff3a6d; color:#ffffff; border-radius:4px; padding:8px; border:none; border-color:#ffffff;" Font-Underline="False"  OnClick="btn_search_Click" runat="server" Text="SEARCH" />         
                </center>
            </div>
            <center>
                <h3>  <asp:Label ID="Label2" runat="server" Text="Search Result:" /> </h3>
                <div class="inset">
                        <asp:GridView ID="Grid_search" runat="server" autoGenerateColumns="true" CssClass="Grid" ></asp:GridView>
                              
                </div>
            
            </center>
            <br/><br/><br/>
            
        </div>
    </form>
</body>
</html>
