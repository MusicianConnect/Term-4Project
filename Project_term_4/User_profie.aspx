<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User_profie.aspx.cs" Inherits="Project_term_4.User_profie" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/> 
    <link rel="stylesheet" href="css/profile.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <style>
        body
            {
                background-image: url(images/Img_bg_2.jpg);
                background-repeat: no-repeat;
                background-size: cover;
            }

        .profileImage{
            width:200px;
            height:200px;
            border-style:solid;
            border-color:white;
            border-radius:50%;
        }

        #imageUpload
            {
                display: none;
            }

            #profileImage
            {
                cursor: pointer;
            }

            #profile-container {
    width: 150px;
    height: 150px;
    overflow: hidden;
    -webkit-border-radius: 50%;
    -moz-border-radius: 50%;
    -ms-border-radius: 50%;
    -o-border-radius: 50%;
    border-radius: 50%;
}

#profile-container img {
    width: 150px;
    height: 150px;
}

        </style>
</head>
<body>
 <form id="form1" runat="server">   
 <div id="main">
     <span style="font-size:30px; position:absolute; cursor:pointer" onclick="openNav()">&#9776;</span>
     <br />

     <h1><font color="white">Musician Connect</font></h1>
     <div class="topnav">
          <a class="active" href="Welcome_page.aspx">Home</a>
          <a class="active" href="Welcome_page.aspx">About</a>
          <a href="First_Mainpage.aspx">Sign-In</a>
          <a href="Webform1.aspx">Sign-Up</a>
          <a href="Welcome_Page.aspx">Logout</a>
             
         
              <div class="search-container">
     
            <asp:TextBox ID="TextBox1" placeholder="search..." runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Go" Height="35px" OnClick="Button1_Click" /> 
                     
                    
    
     
     
      </div>
         
   </div>
     
      <h3><font color="White">My Profile</font></h3>
    

     <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
     <br />
     <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
     &nbsp;<br />
     <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
     <br />
     <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
     <br />
     <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
     <br />
     <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
     <br />
     <br />

    
         <div id="mySidenav" class="sidenav">
             <br/>
&nbsp;

             <div id="profile-container">
                <img id="profileImage" src="images/avatar.png"  />
            </div>
                <input id="imageUpload" type="file" 
                            name="profile_photo" placeholder="Photo" required="" capture>
          
         
             <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
             <br /><br />
             <a  href="Edit.aspx">Edit</a>
             <a  href="Welcome_Page.aspx">Logout</a>
         </div>

  </div>
</form>
<script>
        //side navigation code start
    function openNav()
    {
        document.getElementById("main").style.marginLeft = "20%";
        document.getElementById("mySidenav").style.width = "20%";
            
    }
    function closeNav()
    {
         document.getElementById("main").style.marginLeft= "0";
         document.getElementById("mySidenav").style.width = "0";
       
    }
        //side navigation code end
        //profile image upload code start
   $("#profileImage").click(function(e) {
    $("#imageUpload").click();
});

function fasterPreview( uploader ) {
    if ( uploader.files && uploader.files[0] ){
          $('#profileImage').attr('src', 
             window.URL.createObjectURL(uploader.files[0]) );
    }
}

$("#imageUpload").change(function(){
    fasterPreview( this );
    });
    
</script>
   
</body>

</html>
