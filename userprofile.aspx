<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="WebApplication1.userprofile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="customstylesheet.css" rel="stylesheet" />
    <style type="text/css">
        .grid{
            margin-left:300px;
            margin-right:100px;
        }
        .picture{
            width: 50px;
            height: 50px;
        }
        form{
            display:inline-block;
        }
        .tab{
           margin-left:250px;
           margin-right:100px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>
                <img class="picture" src="images/writer.png" />
                Users Profile
            </h1>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
        <div>
            <asp:Button ID="Button1" runat="server" Text="Display" OnClick="Button1_Click" />
        </div>
        <hr />
        <div class="tab" >
        <table>
            <tr>
                <td>
                    <img class="picture" src="images/adminuser.png" />
                    Member Id
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <img class="picture" src="images/digital-data.png" />
                    Changed Name
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        </div>
        <div>
            <asp:Button ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" Text="Delete" OnClick="Button3_Click" />
        </div>
        <div class="grid">
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </div>
        </form>
</body>
</html>
