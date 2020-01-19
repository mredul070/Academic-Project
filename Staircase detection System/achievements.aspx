<%@ Page Language="C#" AutoEventWireup="true" CodeFile="achievements.aspx.cs" Inherits="achievements" %>

<%@ Register Src="~/controls/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/controls/footer.ascx" TagPrefix="uc1" TagName="footer" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>KDS|Acievements</title>
    <link rel="icon" href="images/556606_394968070559974_1253748021_n.jpg" />
</head>
<body style="background-image:url(images/composition-3288397.jpg)">
    <style>
        p {
            font-family : BatmanForeverAlternate,Arial;
            text-align : center;
            font-size : 20px;
        }
    </style>
    <form id="form1" runat="server">
        <uc1:header runat="server" ID="header" />
    <div>
    <p>Since the beginning of its establishments we achieved these following heights.</p>
    </div>
        <asp:GridView ID="GridView1" BorderColor="RoyalBlue"  BorderWidth="4px" BorderStyle="Ridge" Width="100%" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="Event" HeaderText="Event" SortExpression="Event"></asp:BoundField>
                <asp:BoundField DataField="Result" HeaderText="Result" SortExpression="Result"></asp:BoundField>
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year"></asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:adminstring %>' SelectCommand="SELECT [Event], [Result], [Year] FROM [achievement_list]" InsertCommand="insert into [achievement_list] values(@event,@result,@year)"></asp:SqlDataSource>
        <uc1:footer runat="server" ID="footer" />
    </form>
</body>
    
</html>
