<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Web.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
     <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css"/>

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/> 
<style>
   
    #btn_login {
    background:none;
    color:#ccc;
    width:180px;
    height:50px;
    border:1px solid red;
    font-size:18px;
    border-radius:4px;
    transition:.6s;
    overflow:hidden;
    }

        #btn_login:focus {
        outline:none;
        }

        #btn_login:before {
        content:'';
        display:block;
        position:absolute;
        background:rgba(255,255,255,.5);
        width:60px;
        height:100%;
        left:0;
        top:0;
        opacity: .5;
        filter:blur(30px);
        transform:translateX(-130px) skewX(-15deg);

       }


        #btn_login:after {
        content:'';
        display:block;
        position:absolute;
        background:rgba(255,255,255,0.2);
        width:30px;
        height:100%;
        left:30px;
        top:0;
        opacity:0;
        filter:blur(30px);
        transform:translate(-100px) scaleX(-15deg);

        }

        #btn_login:hover {
        background:red;
        cursor:pointer;
        }

            #btn_login:hover:before {
            transform:translateX(300px) skewX(-15deg);
            opacity:.6;
            transition:.7s;
            
            }


            #btn_login:hover:after {
            transform:translateX(300px) skewX(-15deg);
            opacity:1;
            transition:.7s;
            }

</style>              


</head>
<body class="grey darken-4">
   
    <footer  style="bottom:0; position:fixed; width:100%;">
        

       <div class="footer-copyright grey darken-4" style="height:20px; ">
           <div class="container center-align" ><h6 class="white-text">&copy; Copyright 2019</h6> </div>
       </div> 
    </footer>


    <script>

        $(document).ready(function () {
            $('.carousel').carousel();
            setInterval(function () {
                $('.carousel').carousel('next');
            }, 3500);
            $('.parallax').parallax();
        });
    </script>
    <style>
        .carousel {
        height:400px !important;
        }
        
        /**/
    </style>
     <div class="navbar-fixed"  >
            <nav class="grey darken-4"  >
                <div class="container" >
                   <div class="nav-wrapper">
                  
                  
                    <div class="brand-logo">
                        <img src="images/img1.png" style="height:50px; width:50px; padding-top:5px; font-family:Arial;" /><i>&nbsp;&nbsp;&nbsp;&nbsp;UTPR Couriers</i></div>
                   <div id="div" class="row right">
                   <%--<a class="waves-effect waves-light btn" >Register</a>--%>
                       <ul id="nav-mobile" class="right hide-on-med-and-down">
        <li><a href="registrationUser.aspx" title="Register for Pickup"><i class="large material-icons">add_box</i></a></li>
                             <li><a href="Index.aspx" title="Login"><i class="large material-icons">lock_open</i></a></li>
                             
                             <li><a href="ContactUs.aspx" title="Contact Us"><i class="large material-icons">call</i></a></li>
                           </ul>
                        </div>
                   </div>
                  </div>
              </nav>
        </div>
    <form id="Form1" runat="server">
     <div class="carousel carousel-slider" data-indicators="true">

    
          <a href="#five!" class="carousel-item"><img src="images/carousel_3.png" /></a>
         <a href="#seven!" class="carousel-item"><img src="images/carousel_5.jpg" /></a>
          <a href="#eight!" class="carousel-item"><img src="images/carousel_8.jpg" /></a>
 <a href="#nine!" class="carousel-item"><img src="images/carousel_9.jpg" /></a>
 <a href="#ten!" class="carousel-item"><img src="images/carousel_10.png" /></a>

    </div>
    
   <%-- 
    <div style="margin-left:50px;margin-right:50px;">
        <br />
        <asp:Label ID="lbl_TrackId" runat="server" Text="Track ID :" ForeColor="White" ></asp:Label>
<input placeholder="Enter your Tracking ID here :" id="track_Id" type="text" style="color:white;width:200px;"  />



    </div>
    --%>
    <div class="parallax-container" style="height:200px;">
        <div class="parallax">
            <img src="images/bg3.jpg" class="responsive-img"/>

        </div>


    </div>
    <div class="container" style="height:150px;">
        <br />
       <asp:Label ID="lbl_TrackId" runat="server" Text="Track ID :" ForeColor="white" Font-Bold="True" Font-Size="Larger" ></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;
      <asp:TextBox placeholder="Enter your Tracking ID here :" id="track_Id" type="text" style="color:white;width:200px;" runat="server"></asp:TextBox>
<%--<input placeholder="Enter your Tracking ID here :" id="track_Id" type="text" style="color:white;width:200px;"  />--%> <i class="small material-icons" style="color:white">pageview</i>&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:button id="btn_login" runat="server" name="Track" text="Track" OnClick="btn_login_Click"  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        &nbsp;&nbsp;
         <asp:Label ID="lbl_showTrack" runat="server" Text="" ForeColor="white" Font-Bold="True" Font-Size="Larger" ></asp:Label>
    </div>


    <div class="parallax-container" style="height:200px;">
        <div class="parallax">
            <img src="images/bg3.jpg" class="responsive-img"/>

        </div>

        </div>


         <div class="container" style="height:300px;" >
             <br />
             <h3 style="color:white;">
                 Ready,<br />
                 Set,<br />
                  </h3>
            
                 <h1 style="color:white">  Delivered !<br /></h1>
                 
            
         
         </div>



         <div class="parallax-container" style="height:200px;">
        <div class="parallax">
            <img src="images/bg3.jpg" class="responsive-img"/>

        </div>

        </div>

         <div class="container" style="height:200px;" >
             <br />
             <asp:Label ID="Label1" runat="server" Text="About Us: " ForeColor="White" Font-Bold="True" Font-Size="Larger" ></asp:Label> <br />
         <p class="white-text" style="font-size: large; font-weight: normal; font-family: Arial;">
             UTPR Courier Services, India's premier express air and integrated transportation & distribution company, offers secure and reliable delivery of consignments to many locations in India. The UTPR Courier Services team drives market leadership through its motivated people force, dedicated air and ground capacity, cutting-edge technology, wide range of innovative, vertical specific products and value-added services to deliver unmatched standards of service quality to its customers. Our vision is to establish continuing excellence in delivery capabilities focused on the individual customer.
         </p>
         
         </div>
        
        
   </form>
</body>
</html>