<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Web.ContactUs" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-compatible" content="ie=edge" />
        <title>Contact Us</title>
        <link href="styles/style2.css" type="text/css" rel="stylesheet" />
         <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
         <link rel="stylesheet" type="text/css" href="styles/style.css">
    
    <style>

        a {
            margin-left:800px;
position:relative;
display:inline-block;
padding:15px 30px;
color:black;
text-transform:uppercase;
letter-spacing:4px;
text-decoration:none;
font-size:24px;
overflow:hidden;
transition:0.2s;


}

    a:hover {
    color:#255784;
    background:#f00;
    box-shadow:0 0 10px #2196f3,0 0 40px #2196f3, 0 0 80px #2196f3;
    transition-delay:1s;
    
    }

            a span {
            position:absolute;
            display:block;

            }
            a span:nth-child(1) {
            top:0;
            left:-100%;
            width:100%;
            height:2px;
            background:linear-gradient(90deg,transparent,#2196f3);
            }

            a:hover span:nth-child(1) {
            left:100%;
            transition:1s;

            
            }
             a span:nth-child(3) {
            bottom:0;
            right:-100%;
            width:100%;
            height:2px;
            background:linear-gradient(270deg,transparent,#2196f3);
            }

            a:hover span:nth-child(3) {
            right:100%;
            transition:1s;
            transition-delay:0.5s;
            
            }
            a span:nth-child(2) {
            top:-100%;
            right:0%;
            width:2px;
            height:100%;
            background:linear-gradient(180deg,transparent,#2196f3);
            }

            a:hover span:nth-child(2) {
            top:100%;
            transition:1s;
            transition-delay:0.25s;
            
            }
            a span:nth-child(4) {
            bottom:-100%;
            left:0%;
            width:2px;
            height:100%;
            background:linear-gradient(360deg,transparent,#2196f3);
            }

            a:hover span:nth-child(4) {
            bottom:100%;
            transition:1s;
            transition-delay:0.75s;
            
            }

    </style>
    
    
    
    
    
    </head>
<body>

<p class="line anim-typewriter">Get in Touch for any queries!</p>
  
    <br />
    
    <br />
    <h4>
        Kolkata
    </h4>
    <h5>
        16/1B Monilal Banerjee Road,Khidirpur,Kolkata-700023 <br />
        1800-230-513
    </h5>
    <h4>
        Mumbai
    </h4>
    <h5>
        Swargandha CHS,Lokhandwala complex, New link Road,Andheri West,Mumbai-400053 <br />
        1600-220-237
    </h5><h4>
        Delhi
    </h4>
    <h5>
        Santmohalla,Sagarpur East, Sagarpur, New Delhi-110046 <br />
        1500-652-765
    </h5><h4>
        Bangalore
    </h4>
    <h5>
        Panathur Main Road,Kadubisanahalli,Munireddy Layout,Bengaluru,Karnataka-560103 <br />
        1300-896-451
    </h5>
    <br />
    
    <br />
  <a href="Homepage.aspx" ><i class="medium material-icons">home</i>
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      </a>
</body>


</html>

