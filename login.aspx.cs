using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Email.Text == "admin@gmail.com" && Password.Text == "admin123")
        {
            Response.Redirect("Admin.aspx");
        }
        else
        {
            SqlConnection scon = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Avi\\Documents\\Visual Studio 2010\\WebSites\\NewLook\\App_Data\\avik.mdf;Integrated Security=True;User Instance=True");
            scon.Open();
            SqlCommand cmd = new SqlCommand("Select * from Registration where UN=@s and Pass=@m", scon);
            cmd.Parameters.AddWithValue("@s", Email.Text);
            cmd.Parameters.AddWithValue("@m", Password.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            Response.Redirect("HomeOut.aspx");
           
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    String name = dr[0].ToString() + "" + dr[1].ToString();
                    Email.Text = Convert.ToString(dr[0]);
                    Password.Text = Convert.ToString(dr[1]);
                    Session["Username"] = Email.Text;
                    Response.Redirect("HomeOut.aspx");
                }
                Response.Write("<script>alert('password is not correct')</script>");
            }

            else
            {
                Response.Write("<script>alert('Invalid username & please make sure that you registerd first')</script>");
            }
            scon.Close();
            
        }
    }
}
