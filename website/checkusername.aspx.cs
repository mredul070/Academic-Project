using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class checkusername : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        string str =  Request.QueryString["key"];
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from [info] where username='" + str + "'";
        
        cmd.Connection = con;
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            Response.Write("already exist. Change the username.");
            Session["user"] = "exist";
        }
        else
        {
            Response.Write("You can use this username");
            Session["user"] = "available";
        }
    }
}