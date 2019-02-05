using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Last : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\avik.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("install3.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into Lasttable values(@m,@n,@e)", con);
        cmd.Parameters.AddWithValue("@m", TextBox1.Text);
        cmd.Parameters.AddWithValue("@n", TextBox2.Text);
        cmd.Parameters.AddWithValue("@e", TextBox3.Text);
        cmd.ExecuteNonQuery();
        Response.Redirect("ServiceSuccessfull.aspx");
        con.Close();
    }
}