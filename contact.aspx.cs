using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
public partial class contacts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        try
        {
            if (Page.IsValid)
            {
                MailMessage mailMessage = new MailMessage();
                mailMessage.From = new MailAddress("yuvirajput393@gmail.com");
                mailMessage.To.Add("yuvirajput393@gmail.com");
                mailMessage.Subject = txtSubject.Text;

                mailMessage.Body = "<b> Sender Name : </b>" + txtName.Text + "<br/>"
                   + "<b> Sender Email : </b>" + txtEmail.Text + "<br/>"
                   + "<b> Sender Comments : </b>" + txtComments.Text;
                mailMessage.IsBodyHtml = true;


                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                smtpClient.EnableSsl = true;
                smtpClient.Credentials =
                    new System.Net.NetworkCredential("yuvirajput393@gmail.com", "babitaabbu");
                smtpClient.Send(mailMessage);

                Label1.ForeColor = System.Drawing.Color.BlueViolet;
                Label1.Text = "Thank you for contacting us";

                txtName.Enabled = false;
                txtEmail.Enabled = false;
                txtSubject.Enabled = false;
                txtComments.Enabled = false;
                Submit.Enabled = false;
            }
        }
        catch (Exception ex)
        {
            //Log * Event Viewer or table
            Label1.ForeColor = System.Drawing.Color.BlueViolet;
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text ="there is an unknown problem. Please try later";
        }
    }
}