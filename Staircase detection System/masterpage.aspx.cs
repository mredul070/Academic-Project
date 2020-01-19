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

public partial class masterpage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["adminstring"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((String)Session["new"] == null)
        {
            GridView1.Visible = false;
            GridView2.Visible = false;
            Button1.Visible = false;
            GridView3.Visible = false;
        }
        else
        {
            GridView1.Visible = true;
            GridView2.Visible = true;
            Button1.Visible = true;
            GridView3.Visible = true;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["new"] = null;
        Response.Redirect("~/homepage.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into achievement_list values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("achievements.aspx");
    }
}