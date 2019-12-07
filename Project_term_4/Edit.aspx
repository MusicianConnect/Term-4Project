<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Project_term_4.Edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Edit Profile Info</title>
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
                                      
   </div>
     
      <h3><font color="White">My Profile</font></h3>
    
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" SelectCommand="SELECT * FROM [reg]" DeleteCommand="DELETE FROM [reg] WHERE [Firstname] = @Firstname" InsertCommand="INSERT INTO [reg] ([Firstname], [Lastname], [email], [password], [month], [date], [year], [gender], [musician]) VALUES (@Firstname, @Lastname, @email, @password, @month, @date, @year, @gender, @musician)" UpdateCommand="UPDATE [reg] SET [Lastname] = @Lastname, [email] = @email, [password] = @password, [month] = @month, [date] = @date, [year] = @year, [gender] = @gender, [musician] = @musician WHERE [Firstname] = @Firstname">
            <DeleteParameters>
                <asp:Parameter Name="Firstname" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Firstname" Type="String" />
                <asp:Parameter Name="Lastname" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="month" Type="String" />
                <asp:Parameter Name="date" Type="String" />
                <asp:Parameter Name="year" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="musician" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Lastname" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="month" Type="String" />
                <asp:Parameter Name="date" Type="String" />
                <asp:Parameter Name="year" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="musician" Type="String" />
                <asp:Parameter Name="Firstname" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
     
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="Firstname" DataSourceID="SqlDataSource1">
            <Fields>
                <asp:BoundField DataField="Firstname" HeaderText="Firstname" ReadOnly="True" SortExpression="Firstname" />
                <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="month" HeaderText="month" SortExpression="month" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                <asp:BoundField DataField="musician" HeaderText="musician" SortExpression="musician" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>

      
 
     
    

      
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" DeleteCommand="DELETE FROM [reg] WHERE [Firstname] = @Firstname" InsertCommand="INSERT INTO [reg] ([Firstname], [Lastname], [email], [password], [month], [date], [year], [gender], [musician]) VALUES (@Firstname, @Lastname, @email, @password, @month, @date, @year, @gender, @musician)" SelectCommand="SELECT * FROM [reg] WHERE ([Firstname] = @Firstname)" UpdateCommand="UPDATE [reg] SET [Lastname] = @Lastname, [email] = @email, [password] = @password, [month] = @month, [date] = @date, [year] = @year, [gender] = @gender, [musician] = @musician WHERE [Firstname] = @Firstname">
            <DeleteParameters>
                <asp:Parameter Name="Firstname" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Firstname" Type="String" />
                <asp:Parameter Name="Lastname" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="month" Type="String" />
                <asp:Parameter Name="date" Type="String" />
                <asp:Parameter Name="year" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="musician" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="Firstname" SessionField="firstname" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Lastname" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="month" Type="String" />
                <asp:Parameter Name="date" Type="String" />
                <asp:Parameter Name="year" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="musician" Type="String" />
                <asp:Parameter Name="Firstname" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>


    
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
             <a  href="User_profie.aspx">Profile</a>
             <a  href="Edit.aspx">Edit</a>
             <a  href="Welcome_Page.aspx">Logout</a>
         </div>

  </div>
    

      
    </form>
</body>


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
</html>
