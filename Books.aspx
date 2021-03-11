<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Books.aspx.cs" Inherits="WebApplication1.Books" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="customstylesheet.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 789px;
        }
        .auto-style2 {
            width: 632px;
            height: 16px;
        }
        .auto-style3 {
            width: 744px;
            height: 26px;
        }
        .grid{
             margin-left:300px;
            margin-right:100px;
        }
        .auto-style4 {
            width: 791px;
        }
    </style>
</head>
<body style="height: 254px">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
               <h1>Administrator's Control</h1> 
                <tr>
                    <td class="auto-style2">
                        <h2 class="auto-style3">Add Book</h2>
                    </td>
                </tr>
                <tr>
                    <td>
                    Book Name&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Author Name&nbsp;
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Genre&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Add Book" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
            <div class="grid">
                <asp:GridView  ID="GridView2" runat="server"></asp:GridView>
            </div>
            <h2>
                ALL USERS PROFILE
            </h2>
            <div class="grid">
                <asp:GridView  ID="GridView1" runat="server"></asp:GridView>
            </div>
            <table>
                <tr>
                    <td class="auto-style4">
                        Member Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        Changed Name
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <asp:Button ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" Text="Delete" OnClick="Button3_Click" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="----"></asp:Label>
          </div>
    </form>
</body>
</html>
