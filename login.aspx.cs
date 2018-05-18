using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/stuPage.aspx");
    }

    protected void login_Click(object sender, EventArgs e)
    {
        List<UserInfo> allUsersList = Application["AllUsersList"] as List<UserInfo>;
        UserInfo aUser = allUsersList.Find(x => x.EmailAddress == textEmail.Text && x.Password== textPassword.Text);

        if (aUser != null)
        {
            Session["currentUser"] = aUser;
            string script = "<script type=\"text/javascript\">alert('Successful Login.'); window.open('records.aspx')</script>";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script);
        }
        else
        {
            string script = "<script type=\"text/javascript\">alert('User is incorrect, please sign up.');</script>";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script);
        }
    }


}