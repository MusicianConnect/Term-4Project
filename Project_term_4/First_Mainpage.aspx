<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="First_Mainpage.aspx.cs" Inherits="Project_term_4.First_Mainpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> Musician Connect </title>
    <link rel="stylesheet" href="css/loginpage.css" />
</head>
     <style>
        body
{
    background-image: url(images/Img_bg_2.jpg);
    background-repeat: no-repeat;
    background-size: cover;
}
    </style>
<body class="newStyle3">
  
   <div class="content">
       <h1><font size="50" color="White">Musician Connect</font></h1>
            <ul>
                <li><a class="active" href="Welcome_page.aspx">Home</a></li>
                <li><a class="active" href="Welcome_page.aspx">About</a></li>
                <li><a href="First_Mainpage.aspx">Sign-In</a></li>
                <li><a href="Webform1.aspx">Sign-Up</a></li>
               
            </ul>
        
    <form id="form1" runat="server" class="w3-container w3-card-4 w3-light-grey">  
        <div>
              <table class="newStyle1">
                <tr>
                    <td style="font-weight: bold" >
                        <asp:Image ID="Image1" runat="server" Height="50px" ImageUrl="~/images/logo.png" Width="50px" />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<h1> Musician Connect</h1><br />
                       
                        &nbsp;&nbsp; Connecting Various Music Artist
                        <br />
                        <br />
                        &nbsp;Username&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="348px" CssClass="txtbox" BorderStyle="Solid" ></asp:TextBox>
                        <!--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter username" ControlToValidate="TextBox1" ></asp:RequiredFieldValidator>-->
                        <br />
                        <br />
                        Password&nbsp;<asp:TextBox ID="TextBox2" runat="server"  Width="348px" CssClass="txtbox" BorderStyle="Solid"></asp:TextBox>
                         <!--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter password" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>-->
                        <br />
                        <br />
                        &nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="Sign-In" BorderStyle="Solid" OnClick="Button1_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Sign-Up" PostBackUrl="~/WebForm1.aspx" BorderStyle="Solid" OnClick="Button2_Click"  />
                        <br />
                    </td>
                </tr>
            </table>
            
        </div>
          
    </form>
   
</body>
</html>
