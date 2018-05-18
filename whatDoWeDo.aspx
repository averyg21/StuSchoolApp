<%@ Page Language="C#" AutoEventWireup="true" CodeFile="whatDoWeDo.aspx.cs" Inherits="whatDoWeDo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="whatDoWeDo.css" />
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
                <h1><b>gateWay<span id="purpleSchool">School</span><span id="greenAccount">Account.com</span></b></h1>
            </div>
            <div class="head_right">
                <asp:Button ID="create_acc" Text="Create Account" OnClick="create_acc_Click"
                    runat="server"></asp:Button>
                <asp:Button ID="login" Text="Login" OnClick="login_Click"
                    runat="server"></asp:Button>
            </div>

            <div class="section1">
                <p id ="intro">what do we do</p>

                <p id ="easy">WE MAKE IT EASY FOR SCHOOLS TO COLLECT PAYMENTS <br />ONLINE!</p>

                <p id ="work">How gateWaySchoolAccount works!</p>

                <hr align="right" width="94%"/>


            </div>

            <div class ="bottom">

                <div class ="left">
                    <p class="schools">For Schools</p>

                    <p class ="leftSchool"><span class ="leftSchool">1. Easy software installation</span><br />
                       Getting set up is simple. After the setup process is complete, our expert staff will train you so you will have confidence.  
                    </p>

                    <p class ="leftSchool"><span class ="leftSchool">2. Communicate with parents</span><br />
                       Utilize the built in alert banners on myschoolaccount to notify all parents using the service of upcoming events, 
                        school closings, and other important notifications.  
                    </p>

                    <p class ="leftSchool"><span class ="leftSchool">3. Collect payments</span><br />
                       Utilize the built in alert banners on myschoolaccount to notify all parents using the service of upcoming events, school 
                        closings, and other important notifications.  
                    </p>

                    <p class ="leftSchool"><span class ="leftSchool">4. Generate reports</span><br />
                       A large variety of essential reports are always available in our admin portal. Generate financial reports that are vital 
                        to a healthy school lunch program. 
                    </p>

                    <p class ="leftSchool"><span class ="leftSchool">5. Benefits for schools</span><br /></p>
                    <ul>
                        <li>Speed up lines in your cafeteria</li>
                        <li>Increase sales with funds dedicated to cafeteria purchases</li>
                        <li>Nightly updates of student account records</li>
                        <li>Comprehensive Reporting</li>
                        <li>Reduce Labor Costs</li>


                    </ul>
                </div>

                <div class ="right">
                    <p class="parents">For Parents</p>

                    <p class ="rightParent"><span class ="rightParent">1. Create an account</span><br />
                       Once your school has announced you will be using gateWaySchoolAccount to manage your student’s lunch 
                        account it’s time to create an account.  
                    </p>

                    <p class ="rightParent"><span class ="rightParent">2. Add students</span><br />
                       Adding students is easy with their school ID number.
                    </p>

                    <p class ="rightParent"><span class ="rightParent">3. Make a secure deposit</span><br />
                       Adding students is easy with their school ID number.
                    </p>

                    <p class ="rightParent"><span class ="rightParent">4. Get low balance notifications</span><br />
                       Set up a low balance notifications and never have your student miss a day of lunch due to low funds.
                    </p>

                    <p class ="rightParent"><span class ="rightParent">5. Benefits for parents</span><br /></p>
                       <ul>
                            <li>Convenience of both ACH and Credit Card Transactions</li>
                            <li>24/7 Access</li>
                            <li>Receive low balance notifications via email</li>
                            <li>Quickly view 30 days of detailed purchase history</li>
                            <li>Monitor healthy eating habits</li>
                            <li>Manage multiple students at once</li>
                            <li>Transfer funds between students</li>

                        </ul>


                </div>

            </div>
        </div>



    </div>
    </form>
</body>
</html>
