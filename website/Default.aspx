<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="~/controls/footer.ascx" TagPrefix="uc1" TagName="WebUserControl" %>
<%@ Register Src="~/controls/header.ascx" TagPrefix="uc1" TagName="header" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>KDS|MotionBank</title>
    <link rel="icon" href="images/556606_394968070559974_1253748021_n.jpg" />
    <style type="text/css">
        .style1
        {
           width: 40%;
           border-style: solid;
           border-width: 1px;
           background-color:Silver;
           height: 152px;
        }
        .style2
        {
           width: 295px;
        }
        .style3
        {
           width: 754px;
        }

   </style>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:header runat="server" id="header" />
    <div>
       <table class="style1">
           <tr>
             <td class="style2">
                   &nbsp;</td>

               <td class="style3">
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Add a Motion</td>
           </tr>
           <tr>
               <td class="style2">
                    Tournament Name:</td>
               <td class="style3">
                   <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
                <td class="style2">
                    Debate Format:</td>
               <td class="style3">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="132px">
                       <asp:ListItem>AP</asp:ListItem>
                    <asp:ListItem>BP</asp:ListItem>
                   </asp:DropDownList>
               </td>
           </tr>
           <tr>
               <td class="style2">
                    Motion:</td>
               <td class="style3">
                   <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="style2">
                   &nbsp;</td>
               <td class="style3">
                   <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click"/>
                   <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Show"/>
               </td>
           </tr>
           
           
       </table>

       <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84"

BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" GridLines="Both" RepeatDirection="Vertical"

style="margin-right: 32px">

           <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510"/>
           <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White"/>
           <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510"/>
           <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White"/>
           <ItemTemplate>
           <hrsize=0 />
             Tournament Name:<%#DataBinder.Eval(Container.DataItem,"TournamentName")%><br/>
             Motion:<%#DataBinder.Eval(Container.DataItem,"Motion")%></a><br/>
             Debate Format:<%#DataBinder.Eval(Container.DataItem,"DebateFormat")%><br/>
           </ItemTemplate>
       </asp:DataList>

   <br />

   </div>
        
    </form>
</body>
</html>
