<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="WebApplication1.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="customstylesheet.css" rel="stylesheet" />
     <style type="text/css">
        .ado{
            width:50px;
            height:50px;
        }
        form{
            display:inline-block;
        }
    </style>
</head>
<body>
 <form  runat="server">
        <div>
            <h1> 
                <img class="ado" src="images/writer.png" />  Admin Login </h1>
        </div>
        <hr />
        <table>
            <tr>
                <td>Admin Id
                    <br />
                    <img class="ado" src="images/adminuser.png" />
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="327px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Password
                    <br />
                    <img class="ado" src="images/publisher.png" />
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="326px"></asp:TextBox>
                </td>
            </tr>
        </table>
          <div>
                <tr>
                    <asp:Button ID="Button1" runat="server" Text="Admin Login" Width="142px" OnClick="Button1_Click1" />
                </tr>
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Home" Width="122px" />
                <br />

          </div>
    </form>
</body>
</html>
