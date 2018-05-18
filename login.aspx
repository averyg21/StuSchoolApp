<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="login.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">

        <div class="header">
                <h1><b>gateWay</b><span id="purpleSchool"><b>School</b></span><span id="greenAccount"><b>Account.com</b></span></h1>
        </div>

        <div class="middle">
            <asp:Label ID="loginLabel" runat="server" Text="Login to your account" style="font-size:20pt; font-weight:bold"/>
                <br />
            <ul class="list" style="list-style-type: none">

                <li><asp:Image id="emailImage" runat="server" Height="20px"
                        Width="20px" ImageUrl="email.png"></asp:Image>
                        <asp:TextBox id="textEmail" placeholder="Email" 
                            height="40px" Width="28%" runat ="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="emailValid" runat="server" 
                    ErrorMessage="Enter an email!" ControlToValidate="textEmail" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="emailReg" runat="server" ErrorMessage="Email is not valid." ControlToValidate="textEmail"
                             ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ForeColor="Red" ></asp:RegularExpressionValidator>
                </li>

                    <li><asp:Image id="passwdImage" runat="server" Height="20px"
                        Width="20px" ImageUrl="password.png"></asp:Image>
                        <asp:TextBox id="textPassword" placeholder="Password" 
                            height="40px" Width="28%" runat ="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="passwordValid" runat="server" 
                    ErrorMessage="Enter a password!" ControlToValidate="textPassword" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="passwordReg" runat="server" ErrorMessage="Password is too weak." ControlToValidate="textPassword"
                             ValidationExpression="^(?=.*\d)(?=.*[a-z | A-Z]).{8,10}$" ForeColor="Red" ></asp:RegularExpressionValidator>
                    </li>
            </ul>

        </div>

        <div class="bottom">

            <br />

            <div class="bottomLeft">
                <asp:Button ID="cancelButton" Text="Cancel"
                 OnClick="cancel_Click" runat="server" CausesValidation="false"></asp:Button>

                <asp:Button ID="loginButton" Text="Login"
                 OnClick="login_Click" runat="server"></asp:Button>


            </div>
            
            <div class="bottomRight">

                <asp:HyperLink ID="forgotLink" runat="server" NavigateUrl="~/recover.aspx"
                 Text="Forgot your username or password?"></asp:HyperLink>
                <br />

                <asp:HyperLink ID="signUpLink" runat="server" NavigateUrl="~/create_account.aspx"
                 Text="Sign up today!"></asp:HyperLink>


            </div>
            

        </div>
    
    </div>
    </form>
</body>
</html>
