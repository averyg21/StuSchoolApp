<%@ Application Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Web.Configuration" %>


<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup
        
        //create the list of users objects and
        //then put it to the ApplicationState
        Application["AllUsersList"] = new List<UserInfo>();
        List<UserInfo> allUsersList = Application["AllUsersList"] as List<UserInfo>;

        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);

        string theStatement = "SELECT * from GrimesA_WADsp17_UserInfo";

        SqlCommand sqlCommand = new SqlCommand(theStatement,con);
        try
        {
            con.Open();
            SqlDataReader sqlReader = sqlCommand.ExecuteReader();
            while (sqlReader.Read())
            {
                UserInfo aUser = new UserInfo ();

                // get the results of each column
                aUser.EmailAddress = ((string)sqlReader["EmailAddress"]);
                aUser.Password = ((string)sqlReader["Password"]);
                aUser.FirstName = ((string)sqlReader["FirstName"]);
                aUser.LastName = ((string)sqlReader["LastName"]);
                aUser.SecurityQuestion = ((string)sqlReader["SecurityQuestion"]);
                aUser.SecurityQuestionAnswer = ((string)sqlReader["SecurityQAnswer"]);
                aUser.StateOrProvince = ((string)sqlReader["StateOrProvince"]);
                aUser.SchoolDistrictName = ((string)sqlReader["SchoolDistName"]);

                string studentSelect = "SELECT * from GrimesA_WADsp17_MyStudents where EmailAddress = '" + aUser.EmailAddress + "' ";

                SqlCommand studentCommand = new SqlCommand(studentSelect, con);
                
                SqlDataReader sqlStuReader = studentCommand.ExecuteReader();
                while (sqlStuReader.Read())
                {
                    StudentInfo student = new StudentInfo();

                    // get the results of each column
                    student.EmailAddress = ((string)sqlStuReader["EmailAddress"]);
                    student.StudentID = ((string)sqlStuReader["StudentId"]);
                    student.StudentFirstName = ((string)sqlStuReader["StudentFirstName"]);
                    student.StudentLastName = ((string)sqlStuReader["StudentLastName"]);
                    student.SchoolName = ((string)sqlStuReader["SchoolName"]);

                    aUser.MyStudents.Add(student);
                    

                }

                allUsersList.Add(aUser);
            }
        }
        finally { con.Close(); }

        //Search for 'aUser' in the all Users List
        //Session["currentuser"] = aUser;
        
        
    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started
        

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>
