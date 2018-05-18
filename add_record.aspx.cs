using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class add_record : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/records.aspx");
    }

    protected void add_Click(object sender, EventArgs e)
    {
        UserInfo currentUser = Session["currentUser"] as UserInfo;
        StudentInfo student = new StudentInfo();

        student.EmailAddress = currentUser.EmailAddress;
        student.StudentFirstName = textFirst.Text;
        student.StudentLastName = textLast.Text;
        student.StudentID = textID.Text;
        student.SchoolName = textSchool.Text;

        currentUser.MyStudents.Add(student);

        Response.Redirect("~/records.aspx");

        string script = "<script type=\"text/javascript\">alert('Thank you for signing up. You can now login using the Log In option. An email has also been sent to the email address you provided during Sign Up.'); window.open('login.aspx')</script>";
        ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script);

        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);

        string insertInfo = "INSERT INTO GrimesA_WADsp17_MyStudents (EmailAddress, StudentId, StudentFirstName, StudentLastName," +
                                "SchoolName) VALUES( '" + currentUser.EmailAddress + "', '" +
                                                                                                                textID.Text + "', '" +
                                                                                                                textFirst.Text + "', '" +
                                                                                                                textLast.Text + "', '" +
                                                                                                                textSchool.Text + "')";

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