<%@ Page Language="C#" AutoEventWireup="true" CodeFile="stuPage.aspx.cs" Inherits="stuPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student School Account Application</title>
    <link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
    <form id="stuPage_form" runat="server">
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

            <div class ="head_right">
                
                <asp:Button ID="create_acc" Text="Create Account" OnClick="create_acc_Click"
                    runat="server" CausesValidation="false"></asp:Button>
                <asp:Button ID="login" Text="Login" OnClick="login_Click"
                    runat="server" CausesValidation="false"></asp:Button>
            </div>
        </div>

        <div class="middle">
            <div class="mid_left">
                <img src="account.jpg" height="290" width="333" />

            </div>
            <div class="mid_right">
                <h2 id="payment1">School Payment Solutions for Online Payments and more!</h2>

                <p id="payment2">
                    A complete School Payment Solution for any school, any size! A cashless option
                    for parents and students. Our online payment portal gives parents the ability to
                    log on to their students' accounts and deposit funds for lunch and other school
                    activities.
                </p>

            </div>
        </div>

        <div class="main">
            <div class="main_left">
                <h1>With gateWaySchoolAccount Online Payments, School 
                    Financial Management Has Never Been Easier!
                </h1>

                <p>
                    Improve cash management by giving your parents the ability to  make
                    secure deposits into their children's meal accounts.
                </p>

                <ul>
                    <li>Increase revenue</li>
                    <li>Collect funds in a centralized portal</li>
                    <li>Speed up lines in your cafeteria</li>
                    <li>Collect funds in a centralized portal</li>
                    <li>Reporting for every activity and department</li>
                    <li>Attract more parents, students and supporters</li>
                    <li>Reduce labr by limiting processes & involvement</li>


                </ul>

            </div>
            <div class="main_right">
                <p id="online">
                    To learn more about our Online Payment Portal for Schools,
                    it's features, pricing details, or to schedule a demo, fill
                    out the form below and click the "Tell Me More" button. A 
                    gateWaySchoolAccount representative will be in contact with
                    you winthin 48 hours.
                </p>
                <ul class="list" style="list-style-type: none">
                    <li>First Name <span class="star">*</span>
                        <asp:RequiredFieldValidator ID="firstValid" runat="server" 
                    ErrorMessage="Enter a first name!" ControlToValidate="textFirst" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="textFirst" runat="server" placeholder="First Name" CausesValidation="false"></asp:TextBox>
                    </li>

                    <li>Last Name <span class="star">*</span>  
                        <asp:RequiredFieldValidator ID="lastValid" runat="server" 
                    ErrorMessage="Enter a last name!" ControlToValidate="textLast" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="textLast" runat="server" placeholder="Last Name" CausesValidation="false"></asp:TextBox>
                    </li>

                    <li>Email Address  <span class="star">*</span>
                        <asp:RequiredFieldValidator ID="emailValid" runat="server" 
                    ErrorMessage="Enter a email address!" ControlToValidate="textEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="emailReg" runat="server" ErrorMessage="Email is not valid." ControlToValidate="textEmail"
                             ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ForeColor="Red" ></asp:RegularExpressionValidator>
                        <asp:TextBox ID="textEmail" runat="server" placeholder="Email" CausesValidation="false"></asp:TextBox>
                    </li>

                    <li>Your Or Parent Phone Number <span class="star">*</span>
                        <asp:RequiredFieldValidator ID="phoneVaild" runat="server" 
                    ErrorMessage="Enter a phone number!" ControlToValidate="textPhone" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="phoneReg" runat="server" ErrorMessage="Phone isn't valid." ControlToValidate="textPhone"
                             ValidationExpression="^[0-9]{3}-[0-9]{3}-[0-9]{4}$" ForeColor="Red" ></asp:RegularExpressionValidator>
                        <asp:TextBox ID="textPhone" runat="server" placeholder="Phone" CausesValidation="false"></asp:TextBox>
                    </li>

                    <li>Name of your School or District <span class="star">*</span> 
                        <asp:RequiredFieldValidator ID="schoolValid" runat="server" 
                    ErrorMessage="Enter a school district" ControlToValidate="textSchool" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="textSchool" runat="server" placeholder="School/District" CausesValidation="false"></asp:TextBox>
                    </li>

                    <li>Comments <span class="star">*</span>
                        <asp:RequiredFieldValidator ID="commentValid" runat="server" 
                    ErrorMessage="Enter a email address!" ControlToValidate="textComment" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="textComment" runat="server" placeholder="Comments" CausesValidation="false"></asp:TextBox>
                    </li>

                </ul>

                <asp:Button ID="more" Text="Tell Me More" OnClick="more_click"
                    runat="server" CausesValidation="true"></asp:Button>
                

            </div>

            <div class ="adRotator">
                <asp:AdRotator ID="AdRotator1" AdvertisementFile="~/AdRotator.xml" Width="100%" Height="150px" runat="server" KeywordFilter="ad1" />
                <asp:AdRotator ID="AdRotator2" AdvertisementFile ="~/AdRotator.xml" Width="100%" Height="150px" runat="server" KeywordFilter="ad2"  />
                <asp:AdRotator ID="AdRotator3" AdvertisementFile="~/AdRotator.xml" Width="100%" Height="150px" runat="server" KeywordFilter="ad3" />
            </div>
        </div>

    </div>


    </form>
</body>
</html>
