<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="GallileosGallery.Webpages.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Colorlib">
    <meta name="description" content="#">
    <meta name="keywords" content="#">
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
    <style type="text/css">
            body {
                font-family: 'Roboto', sans-serif;
                background-image: url(../images/backg.jpg);
                background-size: cover;
                min-height: 800px;
            }
            .tab { margin-left: 180px; }
    </style>
    <title>Login Page</title>
</head>
<body>
    <center>
    <form id="form1" runat="server">
        <section class="d-flex align-items-center">
            <div class="container">
            <div class="row d-flex justify-content-center">

                <div class="main col-md-4 col-md-offset-4 dark-bg">
                    <div style="margin-left:260px;"><h1 style="align-content:center;color:white;">&nbsp;</h1>
                        <p style="align-content:center;color:white;">&nbsp;</p>
                        <p style="align-content:center;color:white;">&nbsp;</p>
                        <p style="align-content:center;color:white;">&nbsp;</p>
                        <p style="align-content:center;color:white;">&nbsp;</p>
                        <p style="align-content:center;color:white;">&nbsp;</p>
                        <asp:Label ID="Label3" runat="server" Text="LOGIN" ForeColor="White" Font-Bold="False" Font-Names="Franklin Gothic Demi" Font-Size="XX-Large"></asp:Label>
                        <br />
                        <br />
                        <br />
                    </div>
                    <div class="tab">

            
                        <asp:Label ID="Label1" style="color:white" runat="server" Text="Username : " Font-Size="Large"></asp:Label> <asp:TextBox ID="tb_username" runat="server"></asp:TextBox>
                        <br />
                        <br/><br/>                        
                        <asp:Label ID="Label2" style="color:white" runat="server" Text="Password : " Font-Size="Large"  ></asp:Label>  &nbsp;<asp:TextBox ID="tb_password" TextMode="Password" runat="server"></asp:TextBox>
                        <br />
                        <br/><br/>
                        <div style="margin-left:80px;"> <asp:Button ID="btn_Login" class="btn-block" style="background-color:#ff3a6d; color:#ffffff; border-radius:4px; padding:8px; border:none; border-color:#ffffff;" runat="server" OnClick="Login_user" Text="LOGIN" Font-Bold="True" /> </div>


                    </div>
                </div>
                </div>
            </div>
        </section>
        
    </form>
        </center>
</body>
</html>
