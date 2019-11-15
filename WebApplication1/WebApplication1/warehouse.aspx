<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="warehouse.aspx.cs" Inherits="WebApplication1.warehouse" %>

<!DOCTYPE html>
  <html>
    <head>
     
      <!--Import materialize.css-->
        <link href="newstyles.css" type="text/css" rel="stylesheet" />

     <%-- <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>--%>
        <title>Courier Tracking</title>
    </head>

    <body class="black">
        <div class="navbar-fixed">
            <nav class="pink">
                <div class="container">
                   <div class="nav-wrapper">
                  
                  
                    <div class="brand-logo">
                        <img src="images/output-onlinepngtools%20(1).png" style="height:50px; width:50px; padding-top:5px; font-family:Arial;" /><b>&nbsp;&nbsp;&nbsp;&nbsp;UTPR Couriers</b></div>
                   <div id="div" class="row right">
                   <%--<a class="waves-effect waves-light btn" >Register</a>--%>
                       <ul id="nav-mobile" class="right hide-on-med-and-down">
        <li><a href="registration.aspx">Register</a></li>
                           </ul>

                        </div>
                   </div>
                  </div>
              </nav>
        </div>
       
       <div class="container" style="text-align:center">
        <div style="width:300px;">
    <form >
       <div >
           <div>
               <br />
                <br /> <br /> <br /> <br /> <br />
               <br />
               </div>
          <input placeholder="Enter your User ID here :" id="user_Id" type="text" style="color:white">
          <input placeholder="Enter your Password here :" id="password" type="password" style="color:white">
        </div>
          
            <br />
              
            <br /> 

              <button class="btn btn-large" style="background-color: #ee3a5b;"  type="submit" name="Login">Login
         </button>
          
    </form>
        </div>
           </div>
        <div class="input-field col s12" style="text-align:center" >
          <h1 style="color:white; font-family:Magneto; font-size:50px; text-shadow: 2px 2px 8px #FF0000;">Ready,<br /> Set,<br /> Delivered! </h1>
   </div>
            </body>
  </html>
        

