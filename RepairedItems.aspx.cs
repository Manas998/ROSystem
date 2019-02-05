using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class RepairedItems : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
    {

        DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
        Response.Redirect("AddtoCart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());

    }
    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        Label lb = e.Item.FindControl("Label6") as Label;
        ImageButton btn = e.Item.FindControl("ImageButton1") as ImageButton;
        Label lb1 = e.Item.FindControl("Label3") as Label;

        String mycon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\avik.mdf;Integrated Security=True;User Instance=True";
        String myquery = "Select * from stockdetail where productid=" + lb1.Text;
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        String stockdata = "";

        if (ds.Tables[0].Rows.Count > 0)
        {
            stockdata = ds.Tables[0].Rows[0]["stockavailable"].ToString();

        }
        con.Close();

        if (stockdata == "0")
        {
            lb.Text = "Out of Stock";
            btn.Enabled = false;
            btn.ImageUrl = "images/soldout.png";

        }
        else
        {
            lb.Text = stockdata;
        }
    }
}