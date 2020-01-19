<%@ Page Language="C#" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="homepage" %>

<%@ Register Src="~/controls/footer.ascx" TagPrefix="uc1" TagName="footer" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>KUET Debating Society|KDS</title>
    <link rel="icon" href="images/556606_394968070559974_1253748021_n.jpg" />

    <style>
* {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}
.mySlides {display: none}
img {vertical-align: middle;}


.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}


.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
}


.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}


.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}


.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}


.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}


.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}


.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}


@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}
</style>
</head>

    <style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333333;
}

li {
    float:none;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 16px;
    text-decoration: none;
}

li a:hover {
    background-color: #111111;
}

.button {
  display: inline-block;
  border-radius: 4px;
  background-color: #0b3a84;
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

<body style="background-image:url(images/12439777-blue-smooth-abstract-background-with-shining-light-.jpg)">
    <form id="form1" runat="server">
        <asp:Image ID="Image1" runat="server" AlternateText="KUET Debating Society" ImageUrl="../images/kds--.jpg" Width="100%" Height="200px" />
        
    <div style="width:20%;float:left;">
        <ul>
  <li><a href="achievements.aspx">Achievements</a></li>
  <li><a href="gallery.aspx">Gallery</a></li>
  <li><a href="alumni.aspx">Alumni</a></li>
  <li><a href="upcomingevents.aspx">Upcoming Events</a></li>
  <li><a href="contactus.aspx">Contact Us</a></li>
  <li><a href="loginpage.aspx">Admin Login</a></li>
  <li><a href="memberlogin.aspx">Member Login</a></li>
  <li id="li" runat="server"><a href="Default.aspx">Add a motion</a></li>


</ul>
    </div>
        <div style="margin-left:30%;background-image:url(images/abstract-2829962.jpg);height:70%">
            <p style="font-family:Algerian;text-align:center;font-size:20px">
                This is our news portal.<br />
            </p>
            <ol>
                <li style="font-family:Algerian;text-align:left;font-size:25px">KDS organized KUET IV 2018</li>
                <li style="font-family:Algerian;text-align:left;font-size:25px">KDS oraganized workshop on Jessore Sikkha Board Model School & College</li>
                <li style="font-family:Algerian;text-align:left;font-size:25px">KDS attended NDF BD Divisional Debate Festival</li>
                <li style="font-family:Algerian;text-align:left;font-size:25px">KDS organized English Carnival 2.0</li>
                <li style="font-family:Algerian;text-align:left;font-size:25px">KDS Attended She Dialogue organizes JUDO(Jahangirnagar University Debating Organization)</li>
             </ol>
        </div>
        <hr style="height: 10px;margin-top:10%; color: #4cff00" />
        <p style="font-family:BatmanForeverAlternate;text-align:center;font-size:20px">
            Want To be part of KUET Debating Society. Then don't be late fill up the registration form right now.<br />
       <a href="membershipform.aspx" class="button">
             Join Us
       </a>
            <br />

            Our next upcoming Events......
       </p>

        <div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="images/35733540_1794232243966876_5616539762455216128_n.jpg"  style="width:100%"/>
  <div class="text">World Cup Debate</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="images/31102425_1731224523600982_8692797083054243840_n.jpg" style="width:100%"/>
  <div class="text">Debaters Premiere leauge 2018</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="images/28468333_1676559015734200_6796388905852364140_n.jpg" style="width:100%"/>
  <div class="text">Engilish Carnival 2.0</div>
</div>

<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>

</div>
<br />

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
</div>

<script>
    var slideIndex = 1;
    showSlides(slideIndex);

    function plusSlides(n) {
        showSlides(slideIndex += n);
    }

    function currentSlide(n) {
        showSlides(slideIndex = n);
    }

    function showSlides(n) {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("dot");
        if (n > slides.length) { slideIndex = 1 }
        if (n < 1) { slideIndex = slides.length }
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " active";
    }
</script>
        <a href="upcomingevents.aspx" style="text-decoration:none;margin-left:10px;float:left; font-size:40px;background-image:url(images/995441021.png)">
             English Carnival 2.0
       </a>
       <a href="upcomingevents2.aspx" style="text-decoration:none;margin-left:10px;float:left; font-size:40px;background-image:url(images/995441021.png)">
             DPL 2018
       </a>
       <a href="upcomingevents.aspx" style="text-decoration:none;margin-left:10px;float:left; font-size:40px;background-image:url(images/995441021.png)">
             World Cup Debate
       </a>
        <br />
        <br />
        <uc1:footer runat="server" ID="footer" />
    </form>
</body>
</html>
