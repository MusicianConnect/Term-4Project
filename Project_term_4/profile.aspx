<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="Project_term_4.profile" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Profile Page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <script>
        function openNav()
        {
            document.getElementById("mySidenav").style.width = "250px";
        }

        function closeNav()
        {
             document.getElementById("mySidenav").style.width = "0";
        }
</script>
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
   background-image: url('images/Img_bg_1.jpg');
   background-repeat: no-repeat;
   background-size:cover; 
}
.sidenav {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: white;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}
.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  color: blue;
  display: block;
  transition: 0.3s;
}

.sidenav a:hover {
  color: #f1f1f1;
}

.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}

article {
  float: right;
  padding: 20px;
  width: 80%;
  background-color: #f1f1f1;
  height: 800px; /* only for demonstration, should be removed */
}
  
/* Clear floats after the columns 
section:after {
  content: "";
  display: table;
  clear: both;
}
*/
/* Style the footer */
footer {
  background-color: #777;
  padding: 10px;
  text-align: center;
  color: white;
}
</style>
</head>
<body>
     <h1><font size="50" color="White">Musician Connect</font></h1>
     <ul>
  <li><a class="active" href="Welcome_page.aspx">Home</a></li>
  <li><a class="active" href="Welcome_page.aspx">About</a></li>
  <li><a href="First_Mainpage.aspx">Sign-In</a></li>
  <li><a href="Webform1.aspx">Sign-Up</a></li>
  <li><a href="Welcome_Page.aspx">Logout</a></li>
</ul>
    <form id="form1" runat="server">
 
<section>
   <div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="#">About</a>
  <a href="#">Services</a>
  <a href="#">Clients</a>
  <a href="#">Contact</a>
  </div>
  <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; </span>

  <nav>
    <ul>
      <li><img src="images/profile_picture.png" alt="Avatar" style="width:200px"></li><br /><br />        
     
        <li>
        <asp:Button ID="Profile_acct_btn" runat="server" OnClick="Profile_acct_btn_Click" Text="Account" /><br /><br />
        <li><button>Logout</button></li>
        <li></li> <br/>
        <li> <asp:Button ID="Button1" runat="server" Text="Edit" OnClick="Button1_Click" /> </li>
     
    </ul>
  </nav>

  <article>
    <h1>Account</h1>
    <p style="border:3px; border-style:solid; border-color:#DAF7A6 ; padding: 1em;">Name:<br />
      Born:<br />From:<br />Lives in:<br />Interests:<br />Studied at:</p><br />
    <h1>Posts</h1>
    <p style="border:3px; border-style:solid; border-color:#DAF7A6 ; padding: 1em;">Shows different posts uploaded by user so far<br /></p>
     <h1>Gallery</h1>
       <p style="border:3px; border-style:solid; border-color:#DAF7A6 ; padding: 1em;">Shows different photos uploaded by user so far<br /></p>
 
  </article>
     
</section>
       

<footer>
  <p> © Group#0076_Project </p>
</footer>

    </form>

</body>
</html>  
