<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeFile="membershipform.aspx.cs" Inherits="membershipform" %>

<%@ Register Src="~/controls/header.ascx" TagPrefix="uc1" TagName="header" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>KDS|JoinUs</title>
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
            height: 23px;
            font-weight: 700;
        }
        .auto-style3 {
            text-align: right;
            width: 224px;
        }
        .auto-style4 {
            height: 23px;
            text-align: right;
            width: 224px;
        }
    </style>
</head>
<body style="background-image:url(images/composition-3288397.jpg)">
    <form id="form1" runat="server">
        <uc1:header runat="server" ID="header" />
        <div>
            <p style="font-family:BatmanForeverAlternate;text-align:center;font-size:20px">
                Fill Up the form to be a member of KDS.
            </p>
        </div>
    <div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Roll</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="232px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Name</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="232px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Department</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="232px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">School</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="232px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">College</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Height="30px" Width="232px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Username</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" onkeyup="username(this.value)" Height="30px" Width="232px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" TextMode="Password" Height="30px" Width="232px"></asp:TextBox>
                </td>
            </tr>
        </table>
                <asp:Button Style="margin-left:230px" ID="Button1" runat="server" Text="Submit" Width="234px" OnClick="Button1_Click" />
        <h3>User name availability: <span id="user"></span></h3>
    </div>
        <div>
            <script>
                function username(str)
                {
                    if (str.length == 0) {
                        document.getElementById("user").innerHTML = "";
                    }
                    else
                    {
                        var httpr = new XMLHttpRequest();
                        httpr.onreadystatechange = function ()
                        {
                            if (this.readyState == 4 && this.status == 200) {
                                document.getElementById("user").innerHTML = this.responseText;
                            }
                        };
                        httpr.open("GET", "checkusername.aspx?key=" + str, true);
                        httpr.send();
                    }

                }
            </script>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CString %>" SelectCommand="SELECT * FROM [info]"  UpdateCommand="update [info] set [roll]=@roll,[department]=@department,[name]=@name,[school]=@school,[college]=@college where [roll]=@roll"></asp:SqlDataSource>
    </form>
</body>
</html>
