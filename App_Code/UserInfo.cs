using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for UserInfo
/// </summary>
public class UserInfo
{
    String emailAddress;
    String password;
    String firstName;
    String lastName;
    String securityQuestion;
    String securityQuestionAnswer;
    String stateOrProvince;
    String schoolDistrictName;
    List<StudentInfo> myStudents = new List<StudentInfo>();


    public String EmailAddress
    {
        get { return emailAddress; }
        set { emailAddress = value; }
    }

    public String Password
    {
        get { return password; }
        set { password = value; }
    }

    public String FirstName
    {
        get { return firstName; }
        set { firstName = value; }
    }

    public String LastName
    {
        get { return lastName; }
        set { lastName = value; }
    }

    public String SecurityQuestion
    {
        get { return securityQuestion; }
        set { securityQuestion = value; }
    }

    public String SecurityQuestionAnswer
    {
        get { return securityQuestionAnswer; }
        set { securityQuestionAnswer = value; }
    }

    public String StateOrProvince
    {
        get { return stateOrProvince; }
        set { stateOrProvince = value; }
    }

    public String SchoolDistrictName
    {
        get { return schoolDistrictName; }
        set { schoolDistrictName = value; }
    }

    public List<StudentInfo> MyStudents
    {
        get { return myStudents; }
        set { myStudents = value; }
    }

	public UserInfo()
	{
		//
		// TODO: Add constructor logic here
		//
        
	}
}