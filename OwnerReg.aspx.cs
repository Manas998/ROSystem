using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class OwnerReg : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Avi\\Documents\\Visual Studio 2010\\WebSites\\NewLook\\App_Data\\avik.mdf;Integrated Security=True;User Instance=True");
      
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void saveaddress()
    {
        String updatepass = "insert into OwnerLog(UserID,Password) values('" + TextBox2.Text + "','" + TextBox5.Text + "')";
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = updatepass;
        cmd1.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd1;
        cmd1.ExecuteNonQuery();
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        String query = "insert into OwnerReg(CompanyName,UserID,FullName,EmailID,Password,Area) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        saveaddress();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        con.Close();
        Response.Redirect("ownerdata.aspx");
    }

}