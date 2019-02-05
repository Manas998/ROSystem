using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class AddProductAdmin : System.Web.UI.Page
{
    static string imagelink;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getproductid();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (uploadimage() == true)
        {
            String query = "insert into ProductDetails(productid,productname,price,productimage,category,description,keywordsearch) values(" + Label3.Text + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + imagelink + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
            String mycon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\avik.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label4.Text = "Product Has Been Successfully Saved";
            getproductid();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
        }
    }
    private Boolean uploadimage()
    {
        Boolean imagesaved = false;
        if (FileUpload1.HasFile == true)
        {

            String contenttype = FileUpload1.PostedFile.ContentType;

            if (contenttype == "image/jpeg")
            {

                FileUpload1.SaveAs(Server.MapPath("~/images/") + Label3.Text + ".jpg");
                imagelink = "images/" + Label3.Text + ".jpg";
                imagesaved = true;
            }
            else
            {
                Label4.Text = "Kindly Upload JPEG Format Image Only";
            }

        }

        else
        {
            Label4.Text = " * You have not selected any file - Browse and Select File First";
        }

        return imagesaved;

    }
    public void getproductid()
    {
        String mycon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\avik.mdf;Integrated Security=True;User Instance=True";
        SqlConnection scon = new SqlConnection(mycon);
        String myquery = "select productid from ProductDetails";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = scon;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        scon.Close();
        if (ds.Tables[0].Rows.Count < 1)
        {
            Label3.Text = "1001";

        }
        else
        {



            String mycon1 = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\avik.mdf;Integrated Security=True;User Instance=True";
            SqlConnection scon1 = new SqlConnection(mycon1);
            String myquery1 = "select max(productid) from ProductDetails";
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = myquery1;
            cmd1.Connection = scon1;
            SqlDataAdapter da1 = new SqlDataAdapter();
            da1.SelectCommand = cmd1;
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            Label3.Text = ds1.Tables[0].Rows[0][0].ToString();
            int a;
            a = Convert.ToInt16(Label3.Text);
            a = a + 1;
            Label3.Text = a.ToString();
            scon1.Close();
        }

    }

}