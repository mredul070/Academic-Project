<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" %>

<%@ Register Src="~/controls/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/controls/footer.ascx" TagPrefix="uc1" TagName="footer" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>KDS|ContactUs</title>
    <link rel="icon" href="images/556606_394968070559974_1253748021_n.jpg" />
</head>
<body style="background-image:url(images/composition-3288397.jpg)">
    <form id="form1" runat="server">
        <uc1:header runat="server" ID="header" />
    <div>
        
        <ol style="float:left; border-spacing:20px;border-style:groove">
            <li style="color: #800080;">Raihan Ahmed Joy<br />President(Policy Making & Organization)<br />Contact:01521314732<br />
                email:<asp:HyperLink ID="HyperLink1" style="text-decoration-color:green" runat="server" BackColor="Red">raihan.joy@gmail.com</asp:HyperLink></li>
            <li style="color: #800080">Hasan Morshed Togor<br />President(Debate & Administration)<br />Contact:01521314732<br />
                email:<asp:HyperLink ID="HyperLink2" runat="server" BackColor="Red">Hasan.togor@gmail.com</asp:HyperLink></li>
            <li style="color: #800080">Rafee Muhammed<br />General Secretary<br />Contact:01521314732<br />
                email:<asp:HyperLink ID="HyperLink3" runat="server" BackColor="Red">muhammed.rafee@gmail.com</asp:HyperLink></li>
            <li style="color: #800080">Motasim Billah Mredul<br />Organizing Secretary<br />Contact:01521314732<br />
                email:<asp:HyperLink ID="HyperLink4" runat="server" BackColor="Red">mb.mredul@gmail.com</asp:HyperLink></li>
            <li style="color: #800080">Farhan Tanvir Kaushik<br />Director of Debate<br />Contact:01521314732<br />
                email:<asp:HyperLink ID="HyperLink5" runat="server" BackColor="Red">farhan.tanvir@gmail.com</asp:HyperLink></li>
            <li style="color: #800080">MD Faysal<br />Director of Debate<br />Contact:01521314732<br />
                email:<asp:HyperLink ID="HyperLink6" runat="server" BackColor="Red">md.faysal@gmail.com</asp:HyperLink></li>
        </ol>
        <br />
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="images/download.png" AlternateText="Youtube" ImageAlign="Bottom" Height="40px" Width="40px" />
        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="images/gmail_logo_PNG3.png" ImageAlign="Bottom" Height="40px" Width="40px" />
        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="images/facebook-logo-100035675-medium.jpg" ImageAlign="Bottom" Height="40px" Width="40px" />
    </div>
        <uc1:footer runat="server" ID="footer" />
    </form>
</body>
</html>
