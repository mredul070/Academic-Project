<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginpage.aspx.cs" Inherits="loginpage" %>

<%@ Register Src="~/controls/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/controls/footer.ascx" TagPrefix="uc1" TagName="footer" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>KDS|Admin Login</title>
    <link rel="icon" href="images/556606_394968070559974_1253748021_n.jpg" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 71px;
        }
        .auto-style2 {
            width: 210px;
        }
        .auto-style3 {
            width: 210px;
            text-align: right;
        }
        .auto-style4 {
            width: 210px;
            text-align: right;
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
        }
    </style>
</head>
<body style="background-image:url(images/composition-3288397.jpg)">
    <form id="form1" runat="server">
        <uc1:header runat="server" ID="header" />
        <div>
            <p style="font-family:BatmanForeverAlternate;text-align:center;font-size:20px">
                Please provide your username and password to go to the admin page.
            </p>
        </div>
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">Username</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td class="auto-style3">Password</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Visible="True" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Submit" Width="127px" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember me" />
    </div>
        <uc1:footer runat="server" ID="footer" />
    </form>
</body>
</html>
