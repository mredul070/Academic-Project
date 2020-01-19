<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="gallery" %>

<%@ Register Src="~/controls/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/controls/footer.ascx" TagPrefix="uc1" TagName="footer" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>KDS|Gallery</title>
    <link rel="icon" href="images/556606_394968070559974_1253748021_n.jpg" />
</head>
<body style="background-image:url(images/composition-3288397.jpg)">
    <form id="form1" runat="server">
        <uc1:header runat="server" ID="header" />
    <div>
        <p style="font-family:BatmanForeverAlternate;text-align:center;font-size:20px">
            KUET IV 2018<br />
        </p> 
        <asp:Image ID="Image1" runat="server" ImageUrl="KUET%20IV%202018/DSC_6904.JPG" Height="200px" Width="400px"/>
            <asp:Image ID="Image2" runat="server" ImageUrl="KUET%20IV%202018/DSC_6905.JPG" Height="200px" Width="400px"/>
        <asp:Image ID="Image3" runat="server" ImageUrl="KUET%20IV%202018/DSC_6906.JPG" Height="200px" Width="400px"/>
                <asp:Image ID="Image4" runat="server" ImageUrl="KUET%20IV%202018/DSC_6908.JPG" Height="200px" Width="400px"/>
                <asp:Image ID="Image5" runat="server" ImageUrl="KUET%20IV%202018/DSC_7093.JPG" Height="200px" Width="400px"/>
                <asp:Image ID="Image6" runat="server" ImageUrl="KUET%20IV%202018/DSC_7104.JPG" Height="200px" Width="400px"/>
                <asp:Image ID="Image7" runat="server" ImageUrl="KUET%20IV%202018/DSC_7105.JPG" Height="200px" Width="400px"/>
        <p style="font-family:BatmanForeverAlternate;text-align:center;font-size:20px">
            English Carnival<br />
        </p>
        <asp:Image ID="Image8" runat="server" ImageUrl="English%20Carnival/1.jpg" Height="200px" Width="400px" />
                <asp:Image ID="Image9" runat="server" ImageUrl="English%20Carnival/2.jpg" Height="200px" Width="400px" />
        <asp:Image ID="Image10" runat="server" ImageUrl="English%20Carnival/3.jpg" Height="200px" Width="400px" />
        <asp:Image ID="Image11" runat="server" ImageUrl="English%20Carnival/4.jpg" Height="200px" Width="400px" />

    </div>
        <uc1:footer runat="server" ID="footer" />
    </form>
</body>
</html>
