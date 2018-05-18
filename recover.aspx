<%@ Page Language="C#" AutoEventWireup="true" CodeFile="recover.aspx.cs" Inherits="recover" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="recover.css" />
</head>
<body>
    <form id="form1" runat="server">

         <div class="container">

             <div class="header">
                <h1><b>gateWay</b><span id="purpleSchool"><b>School</b></span><span id="greenAccount"><b>Account.com</b></span></h1>
             </div>

             <div class="middle">
                 <br />

                 <asp:Label ID="recoverLabel" runat="server" Text="Recover Password" style="font-size:20pt; 
                    font-weight:bold"></asp:Label><br />
                <br />

                 <ul class="list" style="list-style-type: none">

                     <li><asp:Image id="emailImage" runat="server" Height="20px"
                        Width="20px" ImageUrl="email.png"></asp:Image>
                        <asp:TextBox id="textEmail" placeholder="Email Address" 
                            height="40px" Width="28%" runat ="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="emailValid" runat="server" 
                             ErrorMessage="Enter an email!" ControlToValidate="textEmail" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="emailReg" runat="server" ErrorMessage="Email is not valid." ControlToValidate="textEmail"
                             ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ForeColor="Red" ></asp:RegularExpressionValidator>
                     </li>
                 </ul>
                 <br />

                 <asp:Label ID="matchEmail" runat="server" Text="The email you are typing above must
                     match the email in records. If the emails match you will recieve an email
                     with login information." style="font-size:15pt; 
                    font-weight:bold"></asp:Label><br />

                 <br />

                 <asp:Button ID="cancelButton" Text="Cancel and go back"
                 OnClick="cancel_Click" runat="server" CausesValidation="false"></asp:Button>

                 <asp:Button ID="recoverButton" Text="Recover Password"
                 OnClick="recover_Click" runat="server"></asp:Button>

             </div>

         </div>
    </form>
</body>
</html>
