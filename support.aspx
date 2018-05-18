<%@ Page Language="C#" AutoEventWireup="true" CodeFile="support.aspx.cs" Inherits="support" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="support.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class ="container">
        <div class="header">
            <div class="head_left">
                    <div class="navMenu">
                        <ul>
                            <li><a href ="stuPage.aspx">For Parents</a>
                                <ul>
                                    <li><a href ="create_account.aspx">Create Account</a></li>
                                    <li><a href ="login.aspx">Login</a></li>
                                    <li><a href ="FAQ.aspx">FAQ</a></li>
                                    <li><a href ="support.aspx">Support</a></li>
                                </ul>
                            </li>
                        </ul>

                        <ul>
                            <li><a href ="whatDoWeDo.aspx">What We Do</a></li>         
                        </ul>

                        <ul>
                            <li><a href ="http://www.foodservice.com/blogs/">Blog</a></li>         
                        </ul>
                </div>
            </div>
            <div class="head_middle">
                <h1><b>gateWay</b><span id="purpleSchool"><b>School</b></span><span id="greenAccount"><b>Account.com</b></span></h1>
            </div>
            <div class="head_right">
                <asp:Button ID="create_acc" Text="Create Account" OnClick="create_acc_Click"
                    runat="server" CausesValidation="false"></asp:Button>
                <asp:Button ID="login" Text="Login" OnClick="login_Click"
                    runat="server" CausesValidation="false"></asp:Button>
            </div>
        </div>

        <div class="middle">
            <p id ="header1">gateWaySchoolAccount Support</p>
            <p><a href ="support.pdf" target="_blank">View As PDF</a></p>
            <p>We like to listen to our users and of course help based on their asks. Here are the most common 
                questions that our support agents field and how you can solve them quickly. 
            </p>
            <br/>

            <p><span>I forgot my user ID and/or password. How can I get them?</span><br />
                Click the Forgot Password? link in the gateWaySchoolAccount.com <a href ="login.aspx"> login page</a>. Enter the e-mail address 
                you used when you created your gateWaySchoolAccount.com account and click Retrieve Password. Your password 
                and user ID will be e-mailed to you.
            </p>

            <p><span>What’s my child eating and how far back can I see information?</span><br />
                Once logged into the site, click “Manage Students” on the main menu bar. From there, click the “VIEW HISTORY” 
                link under the actions section next to the account that you’d like to examine. We display 30 days worth of purchase information, 
                if you require information past the 30 days displayed, you should contact the food service department of your childs school.
            </p>

            <p><span>Why can't I pay with a credit/debit card?</span><br />
                Your school distirct has chosen to only accept ACH debits. That is an industry term for a "E-Check", a check without the paper. 
                The funds are simply transferred from your bank account to the school, the same as if you had written them a check. You may want to 
                contact the food service department at your local school district for more information about accepting credit cards.
            </p>

            <p><span>My students balance is not what it should be. What’s the deal?</span><br />
                gateWaySchoolAccount.com is a portal for you to make & view payments, purchases, and transactions. We simply display the information to 
                you that is provided to us by your childs’ school. If you feel there is a descrepency you should contact the food service department of 
                your school.  
            </p>

            <p><span>Why am I not getting low balance notifications?</span><br />
                When you are in the “Manage my Account” section, make sure that you check the box that states ”Send Low Balance Notification emails”, add 
                an amount at which you would like to be notified and make sure you then check the enabled box. Then save. Most times our users forget to check that enable box.  
            </p>

        </div>

        <div class ="block1">
            <p id ="header2">Connect With gateWaySchoolAccount.com Support Staff</p>
            <asp:HyperLink ID="header22" runat="server" NavigateUrl="~/connect.aspx"
                 Text="Or click here to connect to us" Target="_blank"></asp:HyperLink>
        </div>

        <div class ="block2">
            <asp:TextBox class="top" ID="textFirst" placeholder="First Name" runat="server"></asp:TextBox>
            <asp:TextBox class="top" ID="textLast" placeholder="Last Name" runat="server"></asp:TextBox>
            <asp:TextBox class="top" ID="textEmail" placeholder="Email Address" runat="server"></asp:TextBox>
            <asp:TextBox class="top" ID="textSchool" placeholder="School Name" runat="server"></asp:TextBox>

        </div>

        <div class ="block3">
            <asp:TextBox ID="bottom" TextMode="multiline" Columns="50" Rows="5"
                placeholder="Type your text here" runat="server"></asp:TextBox>
        </div>

        <div class ="block4">
            <asp:Button ID="more" Text="Click here to send you message to support staff"
                 OnClick="more_Click" runat="server"></asp:Button>
            <br />
            <asp:RequiredFieldValidator ID="firstValid" runat="server" 
                    ErrorMessage="Enter a first name!" ControlToValidate="textFirst" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>

            <asp:RequiredFieldValidator ID="lastValid" runat="server" 
                    ErrorMessage="Enter a last name!" ControlToValidate="textLast" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
            
            <asp:RequiredFieldValidator ID="emailValid" runat="server" 
                    ErrorMessage="Enter an email!" ControlToValidate="textEmail" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>

            <asp:RequiredFieldValidator ID="schoolValid" runat="server" 
                    ErrorMessage="Enter a school!" ControlToValidate="textSchool" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>

            <asp:RequiredFieldValidator ID="commentValid" runat="server" 
                    ErrorMessage="Enter a comment!" ControlToValidate="bottom" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="emailReg" runat="server" ErrorMessage="Email is not valid." ControlToValidate="textEmail"
                             ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ForeColor="Red" Font-Size="Large" ></asp:RegularExpressionValidator>
        </div>

    </div>
    </form>
</body>
</html>
