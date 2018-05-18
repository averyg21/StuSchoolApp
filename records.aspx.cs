using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class records : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UserInfo currentUser = Session["currentUser"] as UserInfo;

        if (currentUser.MyStudents.Count == 0)
        {
            TableRow tRow = new TableRow();
            studentTable.Rows.Add(tRow);

            TableCell tCell = new TableCell();
            tRow.Cells.Add(tCell);

            tCell.Text = "No records found";
        }
        else
        {
            foreach (StudentInfo student in currentUser.MyStudents)
            {
                TableRow tRow = new TableRow();
                studentTable.Rows.Add(tRow);

                TableCell tCell = new TableCell();
                tRow.Cells.Add(tCell);

                tCell.Text = student.StudentFirstName;

                TableCell tCell1 = new TableCell();
                tRow.Cells.Add(tCell1);

                tCell1.Text = student.StudentLastName;

                TableCell tCell2 = new TableCell();
                tRow.Cells.Add(tCell2);

                tCell2.Text = student.StudentID;

                TableCell tCell3 = new TableCell();
                tRow.Cells.Add(tCell3);

                tCell3.Text = student.SchoolName;

            }
        }

    }

    protected void add_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/add_record.aspx");
    }

    protected void ok_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/stuPage.aspx");
    }
}