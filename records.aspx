<%@ Page Language="C#" AutoEventWireup="true" CodeFile="records.aspx.cs" Inherits="records" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="records.css" />
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

                <asp:Button ID="addButton" Text="Add Student"
                 OnClick="add_Click" runat="server"></asp:Button>
                <br />
                <br />
                <br />
                <br />

                <asp:Table ID="studentTable" runat="server" CellPadding="5" GridLines="Horizontal" HorizontalAlign="Center">
                    <asp:TableRow>
                        <asp:TableHeaderCell>First Name</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Last Name</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Student ID</asp:TableHeaderCell>
                        <asp:TableHeaderCell>School Name</asp:TableHeaderCell>
                    </asp:TableRow>
                </asp:Table>

                <br />
                <br />

                <asp:Button ID="okButton" Text="OK"
                 OnClick="ok_Click" runat="server"></asp:Button>

            </div>

        </div>

    </form>
</body>
</html>
