using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class loginpage : System.Web.UI.Page
{
    string user = "admin";
    string pass = "0405";

    protected void Page_Load(object sender, EventArgs e)
    {
        cook();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == user && TextBox2.Text == pass)
        {
            if (CheckBox1.Checked)
            {
                Response.Cookies["authcookie"]["username"] = TextBox1.Text;
                Response.Cookies["authcookie"]["password"] = TextBox2.Text;
                Response.Cookies["authcookie"].Expires = DateTime.Now.AddMinutes(1);
            }

        }
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["adminstring"].ConnectionString);
        conn.Open();
        string checkuser = "select count(*) from admin_info where username='" + TextBox1.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            conn.Open();
            string passwordquery = "select password from admin_info where username='" + TextBox1.Text + "'";
            SqlCommand passcomm = new SqlCommand(passwordquery, conn);
            string password = passcomm.ExecuteScalar().ToString().Replace(" ","");
            if (password == TextBox2.Text)
            {
                Session["new"] = TextBox1.Text;
                Response.Redirect("~/masterpage.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Password is not correct');</script>");
            }
        }
        else
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Username is not correct');</script>");
       
    }
    protected void cook()
    {
        if (Request.Cookies["authcookie"] != null)
        {
            if (Request.Cookies["authcookie"]["username"] == user && Request.Cookies["authcookie"]["password"] == pass)
            {
                Session["new"] = TextBox1.Text;
                Response.Redirect("~/masterpage.aspx");
            }
        }
    }
}