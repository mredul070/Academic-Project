using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class controls_WebUserControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((String)Session["new2"] == null)
        {
            li.Visible = false;
            Button1.Visible = false;
        }
        else
        {
            li.Visible = true;
            Button1.Visible = true;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["new2"] = null;
        Response.Redirect("~/homepage.aspx");
    }
}