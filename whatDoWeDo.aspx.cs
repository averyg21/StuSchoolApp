using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class whatDoWeDo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void create_acc_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/create_account.aspx");
    }

    protected void login_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/login.aspx");
    }
}