<%@ Page Language="C#" AutoEventWireup="true" CodeFile="currentmembers.aspx.cs" Inherits="currentmembers" %>

<%@ Register Src="~/controls/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/controls/footer.ascx" TagPrefix="uc1" TagName="footer" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>KDS|ActiveMembers</title>
    <link rel="icon" href="images/556606_394968070559974_1253748021_n.jpg" />
</head>
<body style="background-image:url(images/composition-3288397.jpg)">
    <form id="form1" runat="server">
        <uc1:header runat="server" ID="header" />
    <div>
    <p style="font-family:BatmanForeverAlternate;font-size:20px;text-align:center">
        This is the list of our current members.Check yours...
    </p>
    </div>
        <asp:GridView ID="GridView1" Width="100%" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Roll" DataSourceID="SqlDataSource1" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:CommandField ShowSelectButton="false" />
                <asp:BoundField DataField="Roll" HeaderText="Roll" ReadOnly="True" SortExpression="Roll" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                <asp:BoundField DataField="School" HeaderText="School" SortExpression="School" />
                <asp:BoundField DataField="College" HeaderText="College" SortExpression="College" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CString %>" SelectCommand="SELECT * FROM [info]"></asp:SqlDataSource>
        <uc1:footer runat="server" ID="footer" />
    </form>
</body>
</html>
