using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class recover : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/login.aspx");
    }

    protected void recover_Click(object sender, EventArgs e)
    {
        List<UserInfo> allUsersList = Application["AllUsersList"] as List<UserInfo>;
        UserInfo aUser = allUsersList.Find(x => x.EmailAddress == textEmail.Text);

        if (aUser != null)
        {
            string script = "<script type=\"text/javascript\">alert('Thank You. An email notification has also been sent to the address we have in our file.');</script>";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script);

            int flag = 0;
            String password = aUser.Password;

            String msgBody = "Dear Parent,<br/><br/>" +
                            "You are receiving this email because you requested to recover your password. <br/><br/>" +
                            "Your current password is: < " + password + " > <br/><br/>" +
                            "Thank You.<br/>" +
                            "Gateway School Account Administration Team";
            String msgSubject = "We have recovered your password!";

            MailMessage mailObj = new MailMessage();
            mailObj.Body = msgBody;
            mailObj.From = new MailAddress("stuaccsignup1223@gmail.com", "Student Account Team");
            mailObj.To.Add(new MailAddress(textEmail.Text));
            mailObj.Subject = msgSubject;
            mailObj.IsBodyHtml = true;


            SmtpClient SMTPClient = new System.Net.Mail.SmtpClient();
            SMTPClient.Host = "smtp.gmail.com";
            SMTPClient.Port = 587;
            SMTPClient.Credentials = new System.Net.NetworkCredential("stuaccsignup1223@gmail.com", "hello32!");
            SMTPClient.EnableSsl = true;

            try
            {
                SMTPClient.Send(mailObj);
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage",
                          "alert('Email was not sent.')", true);
                flag = 1;

            }

            if (flag == 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage",
                         "alert('Thank You. An email notification has been sent to the address we have in our file.')", true);

            }
        }
        else
        {
            string script = "<script type=\"text/javascript\">alert('Sorry we cannot find a matching email. Please sign up.');</script>";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script);
        }

    }
}