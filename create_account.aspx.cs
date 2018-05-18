using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class create_account : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void txtChange(object sender, EventArgs e)
    {
        List<UserInfo> allUsersList = Application["AllUsersList"] as List<UserInfo>;
        UserInfo aUser = allUsersList.Find(x => x.EmailAddress == textEmail.Text);

        if (aUser != null)
        {
            string script = "<script type=\"text/javascript\">alert('This user already exists please login');</script>";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script);
        }
    }

    protected void cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/stuPage.aspx");
    }

    protected void create_Click(object sender, EventArgs e)
    {

        List<UserInfo> allUsersList = Application["AllUsersList"] as List<UserInfo>;
        UserInfo currentuser = new UserInfo();
        currentuser.EmailAddress = textEmail.Text;
        currentuser.FirstName = textFirst.Text;
        currentuser.LastName = textLast.Text;
        currentuser.Password = passwordText.Text;
        currentuser.SchoolDistrictName = textSchoolDis.Text;
        currentuser.StateOrProvince = stateList.Text;
        currentuser.SecurityQuestion = securityList.Text;
        currentuser.SecurityQuestionAnswer = securityText.Text;
        allUsersList.Add(currentuser);


            String firstName = currentuser.FirstName;
            String lastName = currentuser.LastName;

            String msgBody = "Dear " + firstName + " " + lastName + ", <br/><br/>" +
                            "Thank you for signing up with us. <br/><br/>" +
                            "You can now access your student school account at http://dcm.uhcl.edu/c432017sp02grimesa/login.aspx <br/><br/>" +
                            "Thank you again for you Signing Up. If you have any questions, please contact <br/>" +
                            "us at http://dcm.uhcl.edu/c432017sp02grimesa/connect.aspx <br/><br/>" +
                            "With Best Wishes, <br/><br/>"+
                            "Gateway School Account Administration Team.";
            String msgSubject = "New Signing Up Notification!";

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
                          "alert('Error.')", true);

            }


        string script = "<script type=\"text/javascript\">alert('Thank you for signing up. You can now login using the Log In option. An email has also been sent to the email address you provided during Sign Up.'); window.open('login.aspx')</script>";
        ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script);

        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);

        string insertInfo = "INSERT INTO GrimesA_WADsp17_UserInfo (EmailAddress, Password, FirstName, LastName," +
                                "SecurityQuestion,SecurityQAnswer,StateOrProvince,SchoolDistName) VALUES( '" +textEmail.Text +"', '" +
                                                                                                                passwordText.Text+"', '"+
                                                                                                                textFirst.Text+"', '" +
                                                                                                                textLast.Text+"', '" +
                                                                                                                securityList.Text+ "','" +
                                                                                                                securityText.Text+"','" +
                                                                                                                stateList.Text+"','" + 
                                                                                                                    textSchoolDis.Text+"')";

        SqlCommand sqlcommand = new SqlCommand(insertInfo, con);

        try
        {
            con.Open();

            sqlcommand.ExecuteNonQuery();
        }
        finally
        {
            con.Close();
        }


    }
}