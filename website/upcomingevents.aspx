<%@ Page Language="C#" AutoEventWireup="true" CodeFile="upcomingevents.aspx.cs" Inherits="upcomingevents" %>

<%@ Register Src="~/controls/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/controls/footer.ascx" TagPrefix="uc1" TagName="footer" %>



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
<body style="background-image:url(images/composition-3288397.jpg)">
    <form id="form1" runat="server">
        <uc1:header runat="server" ID="header" />
    <div>
    <p style="font-family:Algerian;text-align:center;font-size:20px">
        Hi there KUETians! 
<br />
As another year has come around, KUET Debating Society is again here with English Carnival 2.0 ! 
        <br />
This year there is more segments, it gets bigger and most importantly some surprises you don’t want to miss! So join us and register today to unleash your English reading, writing and listening skills. 
<br />
Registration Process: 
Come this Tuesday (27/02/2018) on our weekly session. We will register your name.
        <br />
Registration Fee:
For the members of KDS: Free
For other 2K17 Students who aren't member : 50 taka per event.
<br />
When? 
From 1st-3rd March 
        <br />
What are the segments? 
1. Multimedia Presentation Competition (for 2k17)
2. Public Speaking (for 2k17)
3. Ad making (for 2k17)
4. Story writing (for 2k17)
5. Motion Making Contest (for 2k15 and 2k16)
6. Workshop on Multimedia Presentation (for 2k17)
7. Treasure Hunt (for 2k17)


        <br />
Event Schedule: 
*1st March 2018*
--Workshop on Multimedia Presentation--
Join us to know the ins and outs of multimedia presentation including developing your slide, software skills and how to present yourself well. 
        <br />
--Workshop on Ad Making—
Know about the details of the advertisement world and prepare yourself for the upcoming corporate world to come.
        <br />
*2nd March 2018*
Public Speaking Competition 
Multimedia Presentation Competition
        <br />
*3rd March 2018*
Story Writing Competition
Ad Making competition
Treasure Hunt
        <br />
Stay tuned with us for more surprises !
        <br />
        FaceBook Event link
    </p>
        <a href="https://www.facebook.com/events/206622713223123/">English Carnival 2.0</a>
    </div>
        <p style="font-family:Algerian;text-align:center;font-size:20px">
            Register for this event.
            </p>
        <asp:Button CssClass="button" ID="Button1" runat="server" Text="Register now" OnClick="Button1_Click" />
        <uc1:footer runat="server" ID="footer" />
    </form>
</body>
</html>
