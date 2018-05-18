<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add_record.aspx.cs" Inherits="add_record" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="add_record.css" />
</head>
<body>
    <form id="form1" runat="server">

         <div class="container">

            <div class="header">
                <h1><b>gateWay</b><span id="purpleSchool"><b>School</b></span><span id="greenAccount"><b>Account.com</b></span></h1>
            </div>

            <div class="middle">

                <br />

                <asp:Label ID="studentsLabel" runat="server" Text="My Students" style="font-size:20pt; font-weight:bold"/>

                <asp:Button ID="addButton" Text="Add Student" runat="server" CausesValidation="false"></asp:Button>
                <br />
                <br />
                <br />
                <br />

                <asp:Label ID="newStuLabel" runat="server" Text="New Student Information" style="font-size:20pt; font-weight:bold"/>

                <br />
                <br />

                <ul class="list" style="list-style-type: none">

                    <li><asp:Image id="firstPerson" runat="server" Height="20px"
                        Width="20px" ImageUrl="person.png"></asp:Image>
                        <asp:TextBox id="textFirst" placeholder="Student First Name" 
                            height="40px" Width="28%" runat ="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="firstValid" runat="server" 
                    ErrorMessage="Enter a first name!" ControlToValidate="textFirst" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="firstReg" runat="server" ErrorMessage="Name is not valid." ControlToValidate="textFirst"
                             ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" ForeColor="Red" ></asp:RegularExpressionValidator>
                    </li>

                    <li><asp:Image id="lastPerson" runat="server" Height="20px"
                        Width="20px" ImageUrl="person.png"></asp:Image>
                        <asp:TextBox id="textLast" placeholder="Student Last Name" 
                            height="40px" Width="28%" runat ="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="lastValid" runat="server" 
                    ErrorMessage="Enter a last name!" ControlToValidate="textLast" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="lastReg" runat="server" ErrorMessage="Name is not valid." ControlToValidate="textLast"
                             ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" ForeColor="Red" ></asp:RegularExpressionValidator>
                    </li> 

                    <li><asp:Image id="idImage" runat="server" Height="20px"
                        Width="20px" ImageUrl="id.png"></asp:Image>
                        <asp:TextBox id="textID" placeholder="Student ID" 
                            height="40px" Width="28%" runat ="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="stuIDValid" runat="server" 
                    ErrorMessage="Enter a student ID!" ControlToValidate="textID" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="stuIDReg" runat="server" ErrorMessage="Student ID is not valid." ControlToValidate="textID"
                             ValidationExpression="^[0-9]{10}$" ForeColor="Red" ></asp:RegularExpressionValidator>
                    </li> 
                    <li><asp:Image id="schoolImage" runat="server" Height="20px"
                        Width="20px" ImageUrl="school.png"></asp:Image>
                        <asp:TextBox id="textSchool" placeholder="School Name" 
                            height="40px" Width="28%" runat ="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="schoolValid" runat="server" 
                    ErrorMessage="Enter a school name!" ControlToValidate="textSchool" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="schoolReg" runat="server" ErrorMessage="School name is not valid." ControlToValidate="textSchool"
                             ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" ForeColor="Red" ></asp:RegularExpressionValidator>

                    </li> 
                </ul>

                <br />

                <asp:Button ID="cancelButton" Text="Cancel"
                 OnClick="cancel_Click" runat="server" CausesValidation="false"></asp:Button>

                <asp:Button ID="listButton" Text="Add to List"
                 OnClick="add_Click" runat="server"></asp:Button>

            </div>

        </div>

    </form>
</body>
</html>
