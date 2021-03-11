<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication1.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="customstylesheet.css" rel="stylesheet" />
    <style type="text/css">
        .pic{
            width:1200px;
        }
        .upper{
            height:250px;
        }
        .auto-style1 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
     <div class="upper">
        <img class="pic" src="images/home-bg.jpg" />
    </div>
     <div class="upper">
            <img class="pic" src="images/in-homepage-banner.jpg" />
     </div>
    <form runat="server">
        <asp:Button ID="Button1" runat="server" Text="Register" Width="124px" OnClick="Button1_Click" />
        <h3>Submitted By - Atin 17031874344 <br /> Anshul 17031874232</h3>
        <asp:Button ID="Button2" runat="server" Text="Login" Width="124px" OnClick="Button2_Click" />
        <br />
        OR<br />
        <asp:Button ID="Button3" runat="server" CssClass="auto-style1" OnClick="Button3_Click" Text="Admin Login" Width="123px" />
    </form>

</body>
</html>
