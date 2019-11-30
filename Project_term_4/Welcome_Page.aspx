<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome_Page.aspx.cs" Inherits="Project_term_4.Welcome_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Musician Connect</title>
     <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">-->
    <link rel="stylesheet" href="css/welcome.css" />
   
</head>
<body>
    <video autoplay muted loop id="myVideo"> 
        <source src="videos/video4.mp4" type="video/mp4">
    </video>
        <div class="content">
            <ul>
                <li><a class="active" href="Welcome_page.aspx">Home</a></li>
                <li><a class="active" href="Welcome_page.aspx">About</a></li>
                <li><a href="First_Mainpage.aspx">Sign-In</a></li>
                <li><a href="Webform1.aspx">Sign-Up</a></li>
               
            </ul>
            <h1><font size="50" color="White">Musician Connect</font></h1>
            <p>It gives soul to the universe,wings to the mind,flight to the imagination, and charm and gaiety to life and to everything.&nbsp<i>-Plato</i></p>
  <!--<button id="myBtn" onclick="myFunction()">Pause</button>-->
            <a href="First_Mainpage.aspx"><font color="red">Click here...</font></a>to enter the world of MUSIC
                    
        </div>
    <script>
        var video = document.getElementById("myVideo");
        var btn = document.getElementById("myBtn");
        function myFunction()
        {
            if (video.paused)
            {
                video.play();
                btn.innerHTML = "Pause";
            } else
            {
                video.pause();
                btn.innerHTML = "Play";
            }
        }

    </script>

</body>

</html>
