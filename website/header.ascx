<%@ Control Language="C#" AutoEventWireup="true" CodeFile="header.ascx.cs" Inherits="controls_WebUserControl" %>

<asp:Image ID="Image1" runat="server" AlternateText="KUET Debating Society" ImageUrl="../images/kds--.jpg" Width="100%" Height="200px" />


<style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333333;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 16px;
    background-origin:padding-box;
    text-decoration: none;
}

li a:hover {
    background-color: #111111;
}
</style>

<ul>
  <li><a href="homepage.aspx">Home</a></li>
  <li><a href="achievements.aspx">Achievements</a></li>
  <li><a href="gallery.aspx">Gallery</a></li>
  <li><a href="alumni.aspx">Alumni</a></li>
  <li><a href="upcomingevents.aspx">Upcoming Events</a></li>
  <li><a href="contactus.aspx">Contact Us</a></li>
  <li><a href="loginpage.aspx">Admin Login</a></li>
  <li><a href="memberlogin.aspx">Member Login</a></li>
  <li ID="li" runat="server"><a href="Default.aspx">Add a Motion</a></li>
  <li>
      <asp:Button ID="Button1" Style="font-size:20px;margin-top:5%" runat="server" Text="Member Logout" OnClick="Button1_Click" /></li>
</ul>