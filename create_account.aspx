<%@ Page Language="C#" AutoEventWireup="true" CodeFile="create_account.aspx.cs" Inherits="create_account" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="create_account.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <div class="header">
                <h1><b>gateWay</b><span id="purpleSchool"><b>School</b></span><span id="greenAccount"><b>Account.com</b></span></h1>
            </div>

            <div class="middle">
                <asp:Label ID="signUp" runat="server" Text="Sign Up" style="font-size:20pt; font-weight:bold"/><br />
                <br />
                <asp:Label ID="selectState" runat="server" Text="Select state or providence of your school district" style="font-size:14pt"/>
                <br />

                <ul class="list" style="list-style-type: none">
                    <li><asp:Image id="state" runat="server" Height="20px"
                        Width="20px" ImageUrl="world.png" ToolTip="United States postal abbreviations for states"></asp:Image>

                        <asp:DropDownList ID="stateList" runat="server" height="40px" width="28%">
                            <asp:ListItem Value="AL"/>
	                        <asp:ListItem Value="AK" />
	                        <asp:ListItem Value="AZ" />
	                        <asp:ListItem Value="AR" />
	                        <asp:ListItem Value="CA" />
	                        <asp:ListItem Value="CO" />
	                        <asp:ListItem Value="CT" />
	                        <asp:ListItem Value="DC" />
	                        <asp:ListItem Value="DE" />
	                        <asp:ListItem Value="FL" />
	                        <asp:ListItem Value="GA" />
	                        <asp:ListItem Value="HI" />
	                        <asp:ListItem Value="ID" />
	                        <asp:ListItem Value="IL" />
	                        <asp:ListItem Value="IN" />
	                        <asp:ListItem Value="IA" />
	                        <asp:ListItem Value="KS" />
	                        <asp:ListItem Value="KY" />
	                        <asp:ListItem Value="LA" />
	                        <asp:ListItem Value="ME" />
	                        <asp:ListItem Value="MD" />
	                        <asp:ListItem Value="MA" />
	                        <asp:ListItem Value="MI" />
	                        <asp:ListItem Value="MN" />
	                        <asp:ListItem Value="MS" />
	                        <asp:ListItem Value="MO" />
	                        <asp:ListItem Value="MT" />
	                        <asp:ListItem Value="NE" />
	                        <asp:ListItem Value="NV" />
	                        <asp:ListItem Value="NH" />
	                        <asp:ListItem Value="NJ" />
	                        <asp:ListItem Value="NM" />
	                        <asp:ListItem Value="NY" />
	                        <asp:ListItem Value="NC" />
	                        <asp:ListItem Value="ND" />
	                        <asp:ListItem Value="OH" />
	                        <asp:ListItem Value="OK" />
	                        <asp:ListItem Value="OR" />
	                        <asp:ListItem Value="PA" />
	                        <asp:ListItem Value="RI" />
	                        <asp:ListItem Value="SC" />
	                        <asp:ListItem Value="SD" />
	                        <asp:ListItem Value="TN" />
	                        <asp:ListItem Value="TX" />
	                        <asp:ListItem Value="UT" />
	                        <asp:ListItem Value="VT" />
	                        <asp:ListItem Value="VA" />
	                        <asp:ListItem Value="WA" />
	                        <asp:ListItem Value="WV" />
	                        <asp:ListItem Value="WI" />
	                        <asp:ListItem Value="WY" />
                        </asp:DropDownList></li>  

                    <li><asp:Image ID="schoolDis" runat="server" Height="20px"
                        Width="20px" ImageUrl="world.png" ToolTip="The name of the school district your child attends"></asp:Image>
                        <asp:TextBox id="textSchoolDis" placeholder="School District Name" 
                            height="40px" Width="28%" runat ="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="schoolValid" runat="server" 
                    ErrorMessage="Enter a school!" ControlToValidate="textSchoolDis" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                    </li>

                    <li><asp:Image id="firstPerson" runat="server" Height="20px"
                        Width="20px" ImageUrl="person.png" ToolTip="Parent First Name"></asp:Image>
                        <asp:TextBox id="textFirst" placeholder="First Name" 
                            height="40px" Width="28%" runat ="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="firstValid" runat="server" 
                    ErrorMessage="Enter a first name!" ControlToValidate="textFirst" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                    </li>

                    <li><asp:Image id="lastPerson" runat="server" Height="20px"
                        Width="20px" ImageUrl="person.png" ToolTip="Parent Last Name"></asp:Image>
                        <asp:TextBox id="textLast" placeholder="Last Name" 
                            height="40px" Width="28%" runat ="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="lastValid" runat="server" 
                    ErrorMessage="Enter a last name!" ControlToValidate="textLast" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                    </li>                           
                </ul>
                <br />

                <asp:Label ID="email" runat="server" Text="NOTE: Your e-mail address will be your username" style="font-size:14pt"/>
                <br />

                <ul class="list" style="list-style-type: none">

                    <li><asp:Image id="emailImage" runat="server" Height="20px"
                        Width="20px" ImageUrl="email.png" ToolTip="A valid email address"></asp:Image>
                        <asp:TextBox id="textEmail" placeholder="Email Address" 
                            height="40px"  OnTextChanged="txtChange" Width="28%" runat ="server" AutoPostBack="true"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="emailValid" runat="server" 
                    ErrorMessage="Enter an email!" ControlToValidate="textEmail" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="emailReg" runat="server" ErrorMessage="Email is not valid." ControlToValidate="textEmail"
                             ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ForeColor="Red" ></asp:RegularExpressionValidator>
                    </li>

                    <li><asp:Image id="retypeEmailImage" runat="server" Height="20px"
                        Width="20px" ImageUrl="email.png" ToolTip="Retype the email address entered above"></asp:Image>
                        <asp:TextBox id="retypeEmailText" placeholder="Retype Email Address" 
                            height="40px" Width="28%" runat ="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="retypeEmailValid" runat="server" 
                    ErrorMessage="Enter an email!" ControlToValidate="retypeEmailText" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="retypeEmailReg" runat="server" ErrorMessage="Email is not valid." ControlToValidate="retypeEmailText"
                             ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ForeColor="Red" ></asp:RegularExpressionValidator>
                        <asp:CompareValidator ID="emailCompare" runat="server" ErrorMessage="Your email does not match." ControlToCompare="textEmail"
                             ControlToValidate="retypeEmailText" ForeColor="Red" ></asp:CompareValidator>
                    </li>

                    <li><asp:Image id="passwordImage" runat="server" Height="20px"
                        Width="20px" ImageUrl="password.png" ToolTip="Password must be between 8 and 10 characters, contain at least one digit and one alphabetic character, and must not contain special character"></asp:Image>
                        <asp:TextBox id="passwordText" placeholder="Password" 
                            height="40px" Width="28%" runat ="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="passwordValid" runat="server" 
                    ErrorMessage="Enter a password!" ControlToValidate="passwordText" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="passwordReg" runat="server" ErrorMessage="Password is too weak." ControlToValidate="passwordText"
                             ValidationExpression="^(?=.*\d)(?=.*[a-z | A-Z]).{8,10}$" ForeColor="Red" ></asp:RegularExpressionValidator>
                    </li>

                    <li><asp:Image id="retypPassImage" runat="server" Height="20px"
                        Width="20px" ImageUrl="password.png" ToolTip="Password must be between 8 and 10 characters, contain at least one digit and one alphabetic character, and must not contain special character"></asp:Image>
                        <asp:TextBox id="retypePassText" placeholder="Password" 
                            height="40px" Width="28%" runat ="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="retypePassValid" runat="server" 
                    ErrorMessage="Enter a password!" ControlToValidate="retypePassText" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="retypePassReg" runat="server" ErrorMessage="Password is too weak." ControlToValidate="retypePassText"
                             ValidationExpression="^(?=.*\d)(?=.*[a-z | A-Z]).{8,10}$" ForeColor="Red" ></asp:RegularExpressionValidator>
                        <asp:CompareValidator ID="passCompare" runat="server" ErrorMessage="Your password does not match." ControlToCompare="passwordText"
                             ControlToValidate="retypePassText" ForeColor="Red" ></asp:CompareValidator>
                    </li>

                </ul>

                <br />

                <asp:Label ID="securityLabel" runat="server" Text="Select a security question" style="font-size:14pt"/>
                <br />

                <ul class="list" style="list-style-type: none">

                    <li><asp:Image id="questionImage" runat="server" Height="20px"
                        Width="20px" ImageUrl="question.png" ToolTip="Select a security question"></asp:Image>

                    <asp:DropDownList id="securityList" runat="server" height="40px" width="28%">
                            <asp:ListItem Value="What is your mothers maiden name?"/>
	                        <asp:ListItem Value="What was your childhood nickname?" />
	                        <asp:ListItem Value="What is the name of your favorite childhood friend?" />
	                        <asp:ListItem Value="What is your favorite sport team?" />
	                        <asp:ListItem Value="What was the make and model of your first car?" />
	                        <asp:ListItem Value="What school did you attend for sixth grade?" />
	                        <asp:ListItem Value="What was the last name of your third grade teacher?" />
	                        <asp:ListItem Value="In what town was your first job?" />
	                        <asp:ListItem Value="What is your favorite movie?" />
	                        <asp:ListItem Value="Who is your childhood sports hero?" />
	                        <asp:ListItem Value="In what year was your father born?" />
	                        
                        </asp:DropDownList></li> 

                    <li><asp:Image id="securityImage" runat="server" Height="20px"
                        Width="20px" ImageUrl="question.png" ToolTip="Enter an answer to the security question"></asp:Image>
                        <asp:TextBox id="securityText" placeholder="Type answer to the security question" 
                            height="40px" Width="28%" runat ="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="securityValid" runat="server" 
                    ErrorMessage="Enter an answer!" ControlToValidate="securityText" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                    </li>
                </ul>

                <asp:Button ID="cancelButton" Text="Cancel"
                 OnClick="cancel_Click" runat="server" CausesValidation="false"></asp:Button>

                <asp:Button ID="createButton" Text="Create Account"
                 OnClick="create_Click" runat="server"></asp:Button>

            </div>



        </div>
    </form>
</body>
</html>
