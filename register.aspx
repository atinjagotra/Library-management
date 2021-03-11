<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="WebApplication1.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="customstylesheet.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 39%;
        }
        .auto-style3 {
            width: 299px;
            height: 54px;
        }
        .auto-style5 {
            width: 859px;
            height: 54px;
        }
        .auto-style6 {
            width: 389px;
            height: 29px;
        }
        .auto-style7 {
            width: 908px;
            height: 29px;
        }
        .auto-style8 {
            width: 908px;
        }
        .auto-style9 {
            width: 389px;
        }
        .auto-style10 {
            width: 389px;
            height: 54px;
        }
        .auto-style12 {
            margin-bottom: 0px;
        }
        .auto-style13 {
           
            width: 50px;
            height: 50px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
            <h1>
                <img alt="books" class="auto-style13" src="images/book-online.png" />   Register Yourself for our E-Library</h1>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style6">Full Name
                        <img class="auto-style13" src="images/generaluser.png" />
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox1" runat="server" Width="214px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">E-mail
                        <img class="auto-style13" src="images/search-online.png" />
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox2" runat="server" Width="209px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Address
                        <img class="auto-style13" src="images/library.png" />
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox6" runat="server" Width="208px"></asp:TextBox>
                    </td>
                </tr>
                <hr/>
                </table>
            <table class="auto-style12">
                <tr>
                    <td class="auto-style10">Member Id</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">Password</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <hr>
            </table>
                <div>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" Width="230px"  />
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Login" OnClick="Button2_Click" />
                    </td>
                </tr>
                </div>
        <asp:Label ID="Label1" runat="server" Text="Enter Your Record"></asp:Label>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </form>
</body>
</html>
