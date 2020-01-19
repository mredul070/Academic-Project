<%@ Page Language="C#" AutoEventWireup="true" CodeFile="upcomingevents2.aspx.cs" Inherits="upcomingevents2" %>

<%@ Register Src="~/controls/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/controls/header.ascx" TagPrefix="uc1" TagName="header" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>KDS|UpcomingEvents</title>
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
</head>
<body>
    <form id="form1" runat="server">
        <uc1:header runat="server" ID="header" />
    <div>
    <div>
    <p style="font-family:Algerian;text-align:center;font-size:20px">
        Hi there KUETians! 
<br />
Well!
        <br />
Ladies and gentlemen you know what this mean! We, the "KUET Debating Society" bring you the DPL for the fourth time. This year the event gets more bigger!
<br />
We have-- <br />
-10 teams for Asian parliamentary(AP)<br />
-16 teams for British parliamentary(BP) format.<br />

The teams were formed by a very exciting AUCTION where all the managers made the best team possible.<br />

All the other details will be provided through this event page. So stay up-to-date with this event page.<br />

So, get set & ready for the most exciting intra KUET battle of logic.
    </p>
        <a href="https://www.facebook.com/events/206622713223123/">Debaters Primiere League 2018</a>
    </div>
        <p style="font-family:Algerian;text-align:center;font-size:20px">
            Register for this event.
            </p>
                <asp:Button CssClass="button" ID="Button1" runat="server" Text="Register now" OnClick="Button1_Click" />
    </div>
        <uc1:footer runat="server" ID="footer" />
    </form>
</body>
</html>
