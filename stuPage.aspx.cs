using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class stuPage : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        UserInfo currentUser = Session["currentUser"] as UserInfo;

        if (currentUser == null)
        {
            login.Text = "Login";
        }
        else
        {
            login.Text = "LogOut";
        }

    }

    protected void create_acc_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/create_account.aspx");
    }

    protected void login_Click(object sender, EventArgs e)
    {
        UserInfo currentUser = Session["currentUser"] as UserInfo;

        if (currentUser == null)
        {
            Response.Redirect("~/login.aspx");
        }
        else
        {
            List<UserInfo> allUsersList = Application["AllUsersList"] as List<UserInfo>;
            UserInfo aUser = allUsersList.Find(x => x.EmailAddress == currentUser.EmailAddress);
            allUsersList.Remove(aUser);
            allUsersList.Add(currentUser);
            Session.Abandon();
            Response.Redirect("~/stuPage.aspx");
        }
    }

    protected void more_click(object sender, EventArgs e)
    {
        int flag = 0;

        String msgBody = "Dear Parent,<br/><br/>" +
                        "You are receiving this email because you contacted us with a comment, questions(s) and/or a <br/>" +
                        "concern(s).<br/><br/> Our support staff will respond within the next 48 hours.<br/><br/> Thank You. <br/>" +
                        "Gateway School Account Administration Team";
        String msgSubject = "We have received your message!";

        MailMessage mailObj = new MailMessage();
        mailObj.Body = msgBody;
        mailObj.From = new MailAddress ("stuaccsignup1223@gmail.com","Student Account Team");
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
                     "alert('Thank You for your comments. An email has been sent to the address you entered. Please feel free to contact us anytime in the future so we will address your concerns.')", true);

        }
    }
}