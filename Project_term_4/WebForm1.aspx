<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Project_term_4.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Registration</title>
    <link rel="stylesheet" href="css/registration.css" />
</head>
    <style>
        body
{
    background-image: url(images/Img_bg_2.jpg);
    background-repeat: no-repeat;
    background-size: cover;
}
        .auto-style1 {
            width: 228px;
        }
    </style>
<body>
     
     <div class="content">
          <h1><font size="50" color="White">Musician Connect</font></h1>
            <ul>
                <li><a class="active" href="Welcome_page.aspx">Home</a></li>
                <li><a class="active" href="Welcome_page.aspx">About</a></li>
                <li><a href="First_Mainpage.aspx">Sign-In</a></li>
                <li><a href="Webform1.aspx">Sign-Up</a></li>              
            </ul>
   <form id="form1" runat="server" onsubmit="return checkform(this);">
         <div>
          
            <table cellspacing="2" class="newStyle5" style="font-weight: bold">
                <tr>
                    <td><span class="newStyle2"><strong>Registration</strong></span></td>
                    <td class="auto-style1">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>First Name</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="txtbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="txtbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="txtbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="txtbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td >Age</td>
                    
                    <td class="auto-style1">
                        
                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="txtbox">
                            <asp:ListItem>Month</asp:ListItem>
                            <asp:ListItem>january</asp:ListItem>
                            <asp:ListItem>february</asp:ListItem>
                            <asp:ListItem>march</asp:ListItem>
                            <asp:ListItem>april</asp:ListItem>
                            <asp:ListItem>may</asp:ListItem>
                            <asp:ListItem>june</asp:ListItem>
                            <asp:ListItem>july</asp:ListItem>
                            <asp:ListItem>august</asp:ListItem>
                            <asp:ListItem>september</asp:ListItem>
                            <asp:ListItem>october</asp:ListItem>
                            <asp:ListItem>november</asp:ListItem>
                            <asp:ListItem>december</asp:ListItem>
                        </asp:DropDownList><br /><br />
                        <asp:DropDownList ID="DropDownList4" runat="server" CssClass="txtbox">
                            <asp:ListItem>Day</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem><asp:ListItem>13</asp:ListItem><asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem><asp:ListItem>16</asp:ListItem><asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem><asp:ListItem>19</asp:ListItem><asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem><asp:ListItem>22</asp:ListItem><asp:ListItem>23</asp:ListItem>
                            <asp:ListItem>24</asp:ListItem><asp:ListItem>25</asp:ListItem><asp:ListItem>26</asp:ListItem>
                            <asp:ListItem>27</asp:ListItem><asp:ListItem>28</asp:ListItem><asp:ListItem>29</asp:ListItem>
                            <asp:ListItem>30</asp:ListItem><asp:ListItem>31</asp:ListItem>
                        </asp:DropDownList><br /><br />
                        <asp:DropDownList ID="DropDownList5" runat="server" CssClass="txtbox">
                            <asp:ListItem>Year</asp:ListItem>
                            <asp:ListItem>1995</asp:ListItem>
                            <asp:ListItem>1996</asp:ListItem>
                            <asp:ListItem>1997</asp:ListItem><asp:ListItem>1998</asp:ListItem>
                            <asp:ListItem>1999</asp:ListItem><asp:ListItem>1999</asp:ListItem>
                            <asp:ListItem>2000</asp:ListItem><asp:ListItem>2001</asp:ListItem>
                            <asp:ListItem>2002</asp:ListItem><asp:ListItem>2003</asp:ListItem>
                            <asp:ListItem>2004</asp:ListItem><asp:ListItem>2005</asp:ListItem>
                            <asp:ListItem>2006</asp:ListItem><asp:ListItem>2007</asp:ListItem>
                        </asp:DropDownList>
                        
                    </td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td class="auto-style1">
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="txtbox">
                <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>

                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td >Musician</td>
                    <td class="auto-style1">
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="txtbox">
                <asp:ListItem>Guitarist</asp:ListItem>
                          <asp:ListItem>Singer</asp:ListItem>
                <asp:ListItem>Composer</asp:ListItem>
                <asp:ListItem>Improviser</asp:ListItem>
                <asp:ListItem>Arranger</asp:ListItem>
                <asp:ListItem>Record Producer</asp:ListItem>
                <asp:ListItem>Violonist</asp:ListItem>
                <asp:ListItem>Keyboardist</asp:ListItem>
                <asp:ListItem>Drummer</asp:ListItem>
                <asp:ListItem>Bassist</asp:ListItem>
                <asp:ListItem>Harpist</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <!-- START CAPTCHA -->

<div class="capbox">
<div id="CaptchaDiv"></div>
<div class="capbox-inner">
Type the above number:<br>
<input type="hidden" id="txtCaptcha" >
<input type="text" name="CaptchaInput" id="CaptchaInput" size="15" ><br>
</div>
</div>
<br>
<!-- END CAPTCHA -->
                        </td><td class="auto-style1">
                       <asp:Button ID="reg_submit_btn" runat="server" OnClick="reg_Click" Text="Register" CssClass="txtbox"/>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
                    </td>                  
                </tr>
            </table>           
        </div>           
    </form >
    <script type="text/javascript">

// Captcha Script

        function checkform(theform)
        {
            var why = "";

            if (theform.CaptchaInput.value == "")
            {
                why += "- Please Enter CAPTCHA Code.\n";
            }
            if (theform.CaptchaInput.value != "")
            {
                if (ValidCaptcha(theform.CaptchaInput.value) == false)
                {
                    why += "- The CAPTCHA Code Does Not Match.\n";
                }
            }
            if (why != "")
            {
                alert(why);
                return false;
            }
        }

        var a = Math.ceil(Math.random() * 9)+ '';
        var b = Math.ceil(Math.random() * 9)+ '';
        var c = Math.ceil(Math.random() * 9)+ '';
        var d = Math.ceil(Math.random() * 9)+ '';
        var e = Math.ceil(Math.random() * 9)+ '';
        var code = a + b + c + d + e;
        document.getElementById("txtCaptcha").value = code;
        document.getElementById("CaptchaDiv").innerHTML = code;
        // Validate input against the generated number
        function ValidCaptcha()
        {
             var str1 = removeSpaces(document.getElementById('txtCaptcha').value);
             var str2 = removeSpaces(document.getElementById('CaptchaInput').value);
            if (str1 == str2)
            {
                return true;
            }
            else { return false;}
        }

        // Remove the spaces from the entered and generated code
        function removeSpaces(string)
        {
            return string.split(' ').join('');
        }
</script>
</body>
</html>
