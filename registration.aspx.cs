using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class registration : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Avi\\Documents\\Visual Studio 2010\\WebSites\\NewLook\\App_Data\\avik.mdf;Integrated Security=True;User Instance=True");

        if (IsPostBack)
        {
            con.Open();
            string checkuser = "select count(*) from Registration where UN='" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand(checkuser, con);

            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Response.Write("<script>alert('Username already exist')</script>");
            }

            else
            {
                Response.Write("<script>alert('try with another username')</script>");
            }
            con.Close();

        }
    }
    public void saveaddress()
    {
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Avi\\Documents\\Visual Studio 2010\\WebSites\\NewLook\\App_Data\\avik.mdf;Integrated Security=True;User Instance=True");
        con.Open();
        String updatepass = "insert into login(Username,Email,Password) values('" + TextBox1.Text + "','" + TextBox7.Text + "','" + TextBox5.Text + "')";
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = updatepass;
        cmd1.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd1;
        cmd1.ExecuteNonQuery();
        con.Close();
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=" + Server.MapPath("~\\App_Data\\avik.mdf") + ";Integrated Security=True;User Instance=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into Registration values(@UN,@FN,@LN,@Mail,@Pass,@Mob,@Address,@Area,@Pincode)", con);

        cmd.Parameters.AddWithValue("@UN", TextBox1.Text);
        cmd.Parameters.AddWithValue("@FN", TextBox2.Text);
        cmd.Parameters.AddWithValue("@LN", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Mail", TextBox4.Text);
        cmd.Parameters.AddWithValue("@Pass", TextBox5.Text);
        //cmd.Parameters.AddWithValue("@ConPass", TextBox6.Text);
        cmd.Parameters.AddWithValue("@Mob", TextBox7.Text);
        //cmd.Parameters.AddWithValue("@Code", TextBox8.Text);
        cmd.Parameters.AddWithValue("@Address", TextBox9.Text);
        cmd.Parameters.AddWithValue("@Area", TextBox10.Text);
        cmd.Parameters.AddWithValue("@Pincode", TextBox11.Text);
        cmd.ExecuteNonQuery();
        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('insert');", true);
        con.Close();
        saveaddress();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox7.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";
        TextBox11.Text = "";
    }
}