<%@ Page Language="C#" AutoEventWireup="true" CodeFile="masterpage.aspx.cs" Inherits="masterpage" %>

<%@ Register Src="~/controls/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/controls/footer.ascx" TagPrefix="uc1" TagName="footer" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>KDS|AdminPage</title>
    <link rel="icon" href="images/556606_394968070559974_1253748021_n.jpg" />
    <style>
.button {
  display: inline-block;
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 30px;
            font-weight: 700;
        }
        .auto-style3 {
            text-align: right;
            width: 500px;
        }
        .auto-style4 {
            height: 30px;
            text-align: right;
            width: 500px;
        }
    </style>
</head>
<body style="background-image:url(images/composition-3288397.jpg)">
    <form id="form1" runat="server">
        <uc1:header runat="server" ID="header" />
        <asp:Button CssClass="button" ID="Button1" runat="server" Text="logout" OnClick="Button1_Click" />
        <div>
            <p style="font-family:BatmanForeverAlternate;text-align:center;font-size:20px;margin-top:40px;margin-bottom:40px">
                This is the list of current members.
            </p>
         </div>
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CString %>" SelectCommand="SELECT * FROM [info]" DeleteCommand="delete from [info] where [roll]=@roll" UpdateCommand="update [info] set [roll]=@roll,[department]=@department,[name]=@name,[school]=@school,[college]=@college where [roll]=@roll"></asp:SqlDataSource>
        <asp:GridView Width="100%" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Roll" DataSourceID="SqlDataSource1" GridLines="Horizontal" Style="margin-left: 0px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:CommandField ShowDeleteButton="true" />
                <asp:CommandField ShowEditButton="true" />
                <asp:BoundField DataField="Roll" HeaderText="Roll" ReadOnly="True" SortExpression="Roll" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                <asp:BoundField DataField="School" HeaderText="School" SortExpression="School" />
                <asp:BoundField DataField="College" HeaderText="College" SortExpression="College" />
                <asp:TemplateField></asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
    </div>
        <div>
            <p style="font-family:BatmanForeverAlternate;text-align:center;font-size:20px;margin-top:40px">
                This is the list current admins and their access to this page.
            </p>
         </div>
        <asp:GridView Width="100%" ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Roll" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:CommandField ShowEditButton="true" />
                <asp:CommandField ShowDeleteButton="true" />
                <asp:BoundField DataField="Roll" HeaderText="Roll" ReadOnly="True" SortExpression="Roll" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:adminstring %>" InsertCommand="insert into [admin_info] values (@roll,@username,@password)" SelectCommand="SELECT * FROM [admin_info]" DeleteCommand="delete from [admin_info] where [roll]=@roll" UpdateCommand="update [admin_info] set [username]=@username,[password]=@password where [roll]=@roll"></asp:SqlDataSource>
        <p style="font-family:BatmanForeverAlternate;text-align:center;font-size:20px;margin-top:40px">
                You can update the achievements list from here.
            </p>
        <asp:GridView Width="100%" style="margin-top:10px" ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" AllowSorting="True">
            <Columns>
                <asp:CommandField ShowEditButton="true" />
                <asp:BoundField DataField="Event" HeaderText="Event" SortExpression="Event"></asp:BoundField>
                <asp:BoundField DataField="Result" HeaderText="Result" SortExpression="Result"></asp:BoundField>
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year"></asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString='<%$ ConnectionStrings:adminstring %>' SelectCommand="SELECT [Event], [Result], [Year] FROM [achievement_list]" InsertCommand="insert into [achievement_list] values(@event,@result,@year)"></asp:SqlDataSource>
        <p style="font-family:BatmanForeverAlternate;text-align:center;font-size:20px;margin-top:40px">
                Add new achievement
            </p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Event</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Result</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Year</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Button CssClass="button" ID="Button2" runat="server" Text="Save info" OnClick="Button2_Click" />
        <uc1:footer runat="server" ID="footer" />
    </form>
</body>
</html>
