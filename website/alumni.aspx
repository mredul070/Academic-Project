<%@ Page Language="C#" AutoEventWireup="true" CodeFile="alumni.aspx.cs" Inherits="alumni" %>

<%@ Register Src="~/controls/header.ascx" TagPrefix="uc1" TagName="header" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>KDS|Alumni</title>
    <link rel="icon" href="images/556606_394968070559974_1253748021_n.jpg" />
</head>
<body style="background-image:url(images/composition-3288397.jpg)">
    <form id="form1" runat="server">
        <uc1:header runat="server" ID="header" />
    <div>
    <p style="font-family:BatmanForeverAlternate;text-align:center;font-size:20px">This is the list of people who have been a part of us since the beginning</p>
    </div>
        <asp:Table ID="Table1" GridLines="Both" runat="server" BorderStyle="ridge" BackColor="Transparent" Width="100%">
            <asp:TableHeaderRow BorderStyle="ridge" BorderColor="Violet">
                <asp:TableHeaderCell>Name</asp:TableHeaderCell>
                <asp:TableHeaderCell>Session</asp:TableHeaderCell>
                <asp:TableHeaderCell>final post</asp:TableHeaderCell>
                <asp:TableHeaderCell>contact</asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableRow>
                <asp:TableCell>MD Maidul Haque</asp:TableCell>
                <asp:TableCell>2k1</asp:TableCell>
                <asp:TableCell>President</asp:TableCell>
                <asp:TableCell>+61410700453(AUS)</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Rakib Al fahad</asp:TableCell>
                <asp:TableCell>2k1</asp:TableCell>
                <asp:TableCell>VP</asp:TableCell>
                <asp:TableCell>rakibalfahad@gmail.com(USA)</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Kabid bin Faruque</asp:TableCell>
                <asp:TableCell>2k2</asp:TableCell>
                <asp:TableCell>President</asp:TableCell>
                <asp:TableCell></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Mahmudul Kabir Palash</asp:TableCell>
                <asp:TableCell>2k3</asp:TableCell>
                <asp:TableCell>President</asp:TableCell>
                <asp:TableCell>01717784603</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Tanmoy Uchiha</asp:TableCell>
                <asp:TableCell>2k3</asp:TableCell>
                <asp:TableCell>GS</asp:TableCell>
                <asp:TableCell></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Ainul Haque Chowdhury</asp:TableCell>
                <asp:TableCell>2k3</asp:TableCell>
                <asp:TableCell>OS</asp:TableCell>
                <asp:TableCell>+61469791514(AUS)<br/>
Anjan-9011@yahoo.com</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Asraf Roni</asp:TableCell>
                <asp:TableCell>2k4</asp:TableCell>
                <asp:TableCell>VP</asp:TableCell>
                <asp:TableCell>01717843416</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Fahad Akter</asp:TableCell>
                <asp:TableCell>2k4</asp:TableCell>
                <asp:TableCell>VP</asp:TableCell>
                <asp:TableCell>01717116009</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Safayet Ohab Chowdhury</asp:TableCell>
                <asp:TableCell>2k6</asp:TableCell>
                <asp:TableCell>President</asp:TableCell>
                <asp:TableCell>01711695062<br />
safayet_chowdhury@yahoo.com
</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Tariq Zaman</asp:TableCell>
                <asp:TableCell>2k6</asp:TableCell>
                <asp:TableCell>VP</asp:TableCell>
                <asp:TableCell>01717938148<br />
shurid.b8@hotmail.com
</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Arnob Saha</asp:TableCell>
                <asp:TableCell>2k6</asp:TableCell>
                <asp:TableCell>VP</asp:TableCell>
                <asp:TableCell>01709632125<br />
arnab0603099@gmail.com
</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Sharmin Sultana Tonni</asp:TableCell>
                <asp:TableCell>2k7</asp:TableCell>
                <asp:TableCell>President</asp:TableCell>
                <asp:TableCell>01717811920<br />
sstonni.me07@gmail.com
</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Anik Mallik</asp:TableCell>
                <asp:TableCell>2k8</asp:TableCell>
                <asp:TableCell>President</asp:TableCell>
                <asp:TableCell>01842460626<br />
mallikanik@gmail.com
</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Sheikh Saad Sristy</asp:TableCell>
                <asp:TableCell>2k8</asp:TableCell>
                <asp:TableCell>President</asp:TableCell>
                <asp:TableCell>01552736548<br />
sristy.cse@hotmail.com
</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Nazmus Sakib</asp:TableCell>
                <asp:TableCell>2k9</asp:TableCell>
                <asp:TableCell>President</asp:TableCell>
                <asp:TableCell>+14147975981<br />
nazmus.sakib@marquette.edu
</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Anjon Roy</asp:TableCell>
                <asp:TableCell>2k9</asp:TableCell>
                <asp:TableCell>President</asp:TableCell>
                <asp:TableCell>01677666287</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>M H Rahman Sajal</asp:TableCell>
                <asp:TableCell>2k10</asp:TableCell>
                <asp:TableCell>President</asp:TableCell>
                <asp:TableCell>01833314263<br />
mhrsazal@gmail.com
</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Abdullah Bin Akter</asp:TableCell>
                <asp:TableCell>2k10</asp:TableCell>
                <asp:TableCell>Director of Debate</asp:TableCell>
                <asp:TableCell>01676048385<br />
developer.sifat@gmail.com
</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Gunjan Barua Pushkal</asp:TableCell>
                <asp:TableCell>2k11</asp:TableCell>
                <asp:TableCell>President</asp:TableCell>
                <asp:TableCell>01733108974<br />
gunjan.pushkal@gmail.com
</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Rashik Hasnat</asp:TableCell>
                <asp:TableCell>President</asp:TableCell>
                <asp:TableCell>2k11</asp:TableCell>
                <asp:TableCell>01675013080</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Mohiuddin Ekram</asp:TableCell>
                <asp:TableCell>2k11</asp:TableCell>
                <asp:TableCell>GS</asp:TableCell>
                <asp:TableCell>01673853560<br />
mohiuddinekram@gmail.com
</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Farhana Kabir Zisha</asp:TableCell>
                <asp:TableCell>2k12</asp:TableCell>
                <asp:TableCell>President</asp:TableCell>
                <asp:TableCell>01688779186<br />
fkzisha2@gmail.com
</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Sunzid Hasan</asp:TableCell>
                <asp:TableCell>2k12</asp:TableCell>
                <asp:TableCell>President</asp:TableCell>
                <asp:TableCell>01521100604<br />
sunzidhassan@gmail.com
</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Tanbibur Rahman Tunan</asp:TableCell>
                <asp:TableCell>2k13</asp:TableCell>
                <asp:TableCell>President</asp:TableCell>
                <asp:TableCell>01521324544</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Md Fuad Hassan</asp:TableCell>
                <asp:TableCell>2k13</asp:TableCell>
                <asp:TableCell>President</asp:TableCell>
                <asp:TableCell>01854651265</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Iffat Ara Ebu</asp:TableCell>
                <asp:TableCell>2k13</asp:TableCell>
                <asp:TableCell>DIrector Of Debate</asp:TableCell>
                <asp:TableCell>01521478632</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Ebtidaul Karim</asp:TableCell>
                <asp:TableCell>2k13</asp:TableCell>
                <asp:TableCell>Director Of Debate</asp:TableCell>
                <asp:TableCell>01521369741</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Nafiur Rahman Pial</asp:TableCell>
                <asp:TableCell>2k13</asp:TableCell>
                <asp:TableCell>General Secretary</asp:TableCell>
                <asp:TableCell>01623547654</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>
