using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for StudentInfo
/// </summary>
public class StudentInfo
{
    String emailAddress;
    String studentID;
    String studentFirstName;
    String studentLastName;
    String schoolName;

    public String StudentID
    {
        get { return studentID; }
        set { studentID = value; }
    }

    public String StudentFirstName
    {
        get { return studentFirstName; }
        set { studentFirstName = value; }
    }

    public String StudentLastName
    {
        get { return studentLastName; }
        set { studentLastName = value; }
    }

    public String SchoolName
    {
        get { return schoolName; }
        set { schoolName = value; }
    }

    public String EmailAddress
    {
        get { return emailAddress; }
        set { emailAddress = value; }
    }


	public StudentInfo()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}