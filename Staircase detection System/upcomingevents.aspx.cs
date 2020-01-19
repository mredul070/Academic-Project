using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class upcomingevents : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if ((String)Session["new2"] == null)
            Response.Redirect("memberlogin.aspx");
        else
            Response.Redirect("https://docs.google.com/forms/d/1_Mr5e83Snj2gFWJlor9Nrf4fr0dLJEJC7q-IZIDirJs/edit?usp=drive_web");
    }
}