using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class orderaspx : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\avik.mdf;Integrated Security=True;User Instance=True"); 
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("Default5.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Calendar2.Visible = true;
        TextBox1.Text = "";
    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        string s = Calendar2.SelectedDate.ToLongDateString();
        TextBox1.Text = s.ToString();
    }
    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.Date < DateTime.Now.Date)
        {
            e.Day.IsSelectable = false;
            e.Cell.ForeColor = System.Drawing.Color.Gray;
        }
    }
    
    protected void Button4_Click(object sender, EventArgs e)
    {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Servicetable values(@r,@s,@t,@d,@n,@e,@m)", con);
            cmd.Parameters.AddWithValue("@r", DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@s", DropDownList2.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@t", DropDownList3.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@d", TextBox1.Text);
            cmd.Parameters.AddWithValue("@n", TextBox2.Text);
            cmd.Parameters.AddWithValue("@e", TextBox3.Text);
            cmd.Parameters.AddWithValue("@m", TextBox4.Text);
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('ORDER PLACED');", true);
             con.Close();
       
    }
   
}