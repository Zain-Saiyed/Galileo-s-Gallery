<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Insert_Page.aspx.cs" Inherits="GallileosGallery.Webpages.Insert_Page" %>

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
    <title>Insert Page</title>
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
        </style>
    
</head>
<body>
    <form id="form1" runat="server">
       <div>
            <br/><br/><br/>
            <!-- YOU GOTTA CHANGE THIS CODE (  <CENTER>  )-->
            <center><h1 style="font-family: 'Roboto', sans-serif;font-size:60px;"> Gallileo's Gallery</h1></center>
            <br/><br/>

            <center><asp:Label ID="Label3" runat="server" Text="INSERT   COSMIC   OBJECTS" Font-Bold="True" Font-Names="Segoe UI Historic" Font-Size="X-Large" ForeColor="Yellow"></asp:Label></center>

            <br/><br/>
            <center>
                <div class="main col-md-2 col-md-offset-2">
                    <asp:Label ID="Label1"   runat="server" Text="Filter on Table Name: " ForeColor="White" Font-Bold="True"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddl_table_names" runat="server" ToolTip="Choose category of Cosmic Object" Width="140px" Font-Names="Arial Rounded MT Bold"></asp:DropDownList>  
                    <br/><br/>
            </center>        
                <center><asp:Button ID="btn_initiate_insert" OnClick="btn_Initiate_Click" class="btn-block" style="background-color:#ff3a6d; color:#ffffff; border-radius:4px; padding:8px; border:none; border-color:#ffffff;" runat="server" Text="SELECT COSMIC CATEGORY" Font-Bold="True" /></center> 

           <section class="d-flex align-items-center">
                <div class="container">
                    <div class="row d-flex justify-content-center">
                        <div class="main col-md-12 col-md-offset-12 dark-bg">
                        
                    <center> <h3>  <asp:Label ID="Label2" runat="server" Text="Enter Column Values:" /> </h3>  </center><br/>                
  			            
                          <div style="margin-left:680px;">
                                <asp:Label ID="col1" runat="server" style="font-family: 'Roboto', sans-serif;" Text="Dwarf PID :"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="tb1" runat="server" Width="200px"></asp:TextBox>
                                <br />
                                <br/>
                                <asp:Label ID="col2" runat="server" style="font-family: 'Roboto', sans-serif;" Text="Equitorial Radius :"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="tb2" runat="server" Width="200px"></asp:TextBox>
                                <br />
                                <br/>
	  			                <asp:Label ID="col3" runat="server" style="font-family: 'Roboto', sans-serif;" Text="Surface Area :"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="tb3" runat="server" Width="200px"></asp:TextBox>
                                <br />
                                <br/>
                                <asp:Label ID="col4" style="font-family: 'Roboto', sans-serif;" runat="server" Text="Rotation :"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:TextBox ID="tb4" runat="server"  Width="200px"></asp:TextBox>
                                <br />
                                <br/>
                                <asp:Label ID="col5" style="font-family: 'Roboto', sans-serif;" runat="server" Text="Orbit :"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="tb5" runat="server" Width="200px"></asp:TextBox>
                                <br />
                                <br/>
                                <asp:Label ID="col6" style="font-family: 'Roboto', sans-serif;" runat="server" Text="Surface Temperature :"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="tb6" runat="server" Width="200px"></asp:TextBox><br/>                              
                                <br/>
                       
 			            </div>
                            </div>
                        </div>
                    </div>
               </section>
           <center> <div class="btn-group" role="group" aria-label="Basic example"> </div>
               <asp:Button ID="btn_insert_values" OnClick="btn_insert_values_Click" runat="server" Text="INSERT VALUES" class="btn-block" style="background-color:#ff3a6d; color:#ffffff; border-radius:4px; padding:8px; border:none; border-color:#ffffff;" Font-Underline="False" BorderStyle="NotSet" Font-Bold="True"></asp:Button>     </center>
                     
           <br/><br/>           
            <CENTER>    
                <asp:Label ID="LBL_Status" Font-Bold="True" runat="server" Text="INSERTION STATUS : " Font-Size="X-Large"></asp:Label> 
                
                <br/><br/><br/>
                
                <asp:Label ID="lbl__" runat="server" Text="OPTIONS AVAILABLE: " Font-Bold="True"></asp:Label>
                <br/><br/>
                <asp:Label ID="lbl_search" runat="server" Text="Search Cosmic Objects : "></asp:Label>&nbsp;<asp:Button ID="btn_search_page_go" Onclick="btn_search_page_go_Click" class="btn-block" style="background-color:#ff3a6d; color:#ffffff; border-radius:4px; padding:8px; border:none; border-color:#ffffff;" runat="server" Text="SEARCH OBJECTS" Font-Bold="True" /><BR/>                
                <br/><asp:Label ID="lbl_update" runat="server" Text="Update Cosmic Objects : "></asp:Label><asp:Button ID="btn_Update" Onclick="btn_Update_Click" runat="server" class="btn-block" style="background-color:#ff3a6d; color:#ffffff; border-radius:4px; padding:8px; border:none; border-color:#ffffff;" Text="UPDATE OBJECTS" Font-Bold="True" /><BR/>
                <br/><asp:Label ID="lbl_delete" runat="server" Text="Delete Cosmic Objects : "></asp:Label>&nbsp;<asp:Button ID="btn_Delete" runat="server" class="btn-block" style="background-color:#ff3a6d; color:#ffffff; border-radius:4px; padding:8px; border:none; border-color:#ffffff;"  Onclick="btn_Delete_Click" Text="DELETE OBJECTS" Font-Bold="True" /><BR/>
            </CENTER>


        </div>
    </form>
</body>
</html>
