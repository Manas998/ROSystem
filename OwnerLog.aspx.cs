using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class OwnerLog : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Avi\\Documents\\Visual Studio 2010\\WebSites\\NewLook\\App_Data\\avik.mdf;Integrated Security=True;User Instance=True");
        con.Open();
        String query = "Select * From OwnerLog";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        String UserID;
        String Password;
        String area;
        UserID = ds.Tables[0].Rows[0]["UserID"].ToString();
        Password = ds.Tables[0].Rows[0]["Password"].ToString();
        area = ds.Tables[0].Rows[0]["Area"].ToString();
        con.Close();
        if (UserID == TextBox1.Text && Password == TextBox2.Text && area == TextBox3.Text)
        {
            Session["vik"] = area;
            Response.Redirect("ownerdata.aspx");
        }
    }
}