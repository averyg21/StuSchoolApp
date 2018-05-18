<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FAQ.aspx.cs" Inherits="FAQ" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FAQ Page</title>
    <link rel="stylesheet" type="text/css" href="FAQ.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
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
                <h1><b>gateWay<span id="purpleSchool">School</span><span id="greenAccount">Account.com</span></b></h1>
            </div>
            <div class="head_right">
                <asp:Button ID="create_acc" Text="Create Account" OnClick="create_acc_Click"
                    runat="server"></asp:Button>
                <asp:Button ID="login" Text="Login" OnClick="login_Click"
                    runat="server"></asp:Button>
            </div>
        </div>

        <div class ="info">
            <p id ="header1">Frequently Asked Questions for gateWaySchool Account</p>
            <p><a href ="faq.pdf" target="_blank">View As PDF</a></p>
            <br />
            <p><span>How do I find out if my students' school uses this service? </span><br />
                Please contact your child’s school to determine if they use the gateWaySchoolAccount.com service.
            </p>

            <p><span>Who actually maintains my students' account?</span><br />
                Each school district is responsible for maintaining their student accounts and all associated funds. 
                All accounts are created, modified, and deactivated through the school’s database. Any changes to a student account are
                 automatically transmitted to gateWaySchoolAccount.com. gateWaySchoolAccount.com only displays the information originating 
                from the school’s database.
            </p>

            <p><span>Where do I get my students' ID number?</span><br />
                A Student ID number can be obtained by contacting the students' school. Your child’s ID number may also be displayed on their school ID card.
            </p>

            <p><span>I forgot my password. How can I get my password?</span><br />
                Click the Forgot Password? link in the gateWaySchoolAccount.com login page. Enter the e-mail address you used when you created 
                your gateWaySchoolAccount.com account and click Retrieve Password. Your password will be e-mailed to you.
            </p>

            <p><span>How do I Set-Up and Manage Low Balance Email Notifications?</span><br />
                Low balance email notifications are a great way to make sure that your student always has available funds for school lunch. 
                When his/her balance goes below the set minimum, you are notified! You may change the desired email address or minimum balance at any time. 
                Set-up and management is easy! Click here for instructions. 
            </p>

            <p><span>Can I cancel a pre-order?</span><br />
                Once a pre-order has been submitted to your school, you can no longer cancel or change an order through our 
                website. You will need to contact the food service department at your school to inquire about changing/canceling your orders.
                Most of the school's that use our pre-order services order their food well in advance based on the orders that parents have placed online. 
                If parents have the option to change their orders online, it could cause overages or shortages for the food service provider. In addition, each school 
                has their own policy for canceling pre-ordered items. Some are obviously more flexible than other. Therefore, the system has been setup to not allow changes 
                once an order has been submitted to the schools. Parents will need to work directly with the food service departments to change or cancel orders that have been submitted. 
            </p>

            <p><span>Why am I being told that I'm using an 'iframe' and the login is disabled?</span><br />
               A 3rd party toolbar such as yahoo, google, ask.com, etc. will often utilize an 'iframe.' We ONLY allow secure communication of parent and student data to and from the website.  
                For this reason, all browser toolbars such as these (and including others) should be disabled prior to logging into gateWaySchoolAccount.
            </p>

            <p><span>How long will it take for my deposit to show up in my child's account?</span><br />
               The cut-off time for online payments is midnight (EST) each night. Payment made before midnight (EST), will post to the student Deposit Funds the same night and be available to the student 
                in the morning. Payments made after midnight (EST), will not post until the following night. There are occasions when payments do not post to the local school over night. This could be caused 
                by equipment problems at the school, internet outage in a certain part of the country or a problem on one of our servers. The technical staff at gateWaySchoolAccount.com closely monitors the network traffic 
                between our system and your local school. Any time there is a problem, we try to have it resolved within 24 hours so there is a minimal delay in posting the payments.
            </p>

            <p><span>What is the difference between ala carte and meal plan?</span><br />
               AlaCarte money can be used to purchase anything in the cafeteria, meal plan money can only be used to purchase government qualified meals (no junk food).
            </p>

            <p><span>Who should I contact if I have questions about a recent payment or purchase?</span><br />
               gateWaySchoolAccount.com is a portal for you to view payments, purchases, and transactions. All questions concerning online transactions should be directed to your school districts' 
                food service department. However, a deposit history report is available should the inquiry be related to deposit information details.
            </p>

            <p><span>Can I make payments to multiple children's accounts with one payment?</span><br />
               Yes. You will need to enter a specific payment amount for each child.
            </p>

            <p><span>How do I add additional students after the initial set up of my account?</span><br />
               Students can be added by clicking the “Add Student” button located on the gateWaySchoolAccount.com dashboard. Students can also be added or removed from the “Manage Students” section.
            </p>

            <p><span>How do I find out what my child has been buying for lunch?</span><br />
               Once logged into the site, click the “Manage Students” button or menu bar option. When this section is displayed, click the “VIEW HISTORY” link next to the account that you’d like to examine.
            </p>

            <p><span>My student has graduated or moved to a school that doesn't use your services. How do I close my parent account?</span><br />
               To close your parent account, if you do not have any additional students, you can deactivate your account from within your parent account. Once you login, select the "mange my 
                account" link at the top on your landing page. Next click the "other account options" located on the right side of the screen above the Mobile MSA banner. Select "deactivate account" and enter a reason 
                for deactivating, such as son is graduating. Once your request has been submitted, we will deactivate your parent account.
            </p>

            <p><span>What happens to the money in my child’s account at the end of the school year?</span><br />
               The balances will automatically rollover to the next school year. If however, your student is graduating or changing schools, your school will provide a refund.  
                You may want to contact them directly to inquire about how they handle the refund process. In addition, if your student will be continuing next year, but you'd still like a refund, you 
                will need to check with your school to inquire about their policies.
            </p>






                   


        </div>

    </div>
    </form>
</body>
</html>
