<%@ Page Language="C#" AutoEventWireup="true" CodeFile="connect.aspx.cs" Inherits="connect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="connect.css" />
    <script type="text/javascript">
        var xmlDoc;
        var xmlhttp;


        function loadXMLDoc() {

            xmlhttp = new XMLHttpRequest();
            xmlhttp.onreadystatechange = readData;
            xmlhttp.open("GET", "contact_info.xml", true);
            xmlhttp.send();

        }

        function readData() {
            if (xmlhttp.readyState == 4) {
                xmlDoc = xmlhttp.responseXML;
                var items = xmlDoc.getElementsByTagName("info");

                var nextValue1 = items[0].getAttribute("toll_free_phone");
                var nextValue2 = items[0].getAttribute("direct_phone");
                var nextValue3 = items[0].getAttribute("fax");
                var nextValue4 = items[0].getAttribute("email");
                var nextValue5 = items[0].getAttribute("address_line1");
                var nextValue6 = items[0].getAttribute("address_line2");
                var nextValue7 = items[0].getAttribute("city");
                var nextValue8 = items[0].getAttribute("state");
                var nextValue9 = items[0].getAttribute("zip");

                document.getElementById("tollID").innerHTML = nextValue1;
                document.getElementById("dirPhone").innerHTML = nextValue2;
                document.getElementById("fax").innerHTML = nextValue3;
                document.getElementById("email").innerHTML = nextValue4;
                document.getElementById("add1").innerHTML = nextValue5;
                document.getElementById("add2").innerHTML = nextValue6;
                document.getElementById("city").innerHTML = nextValue7;
                document.getElementById("state").innerHTML = nextValue8;
                document.getElementById("zip").innerHTML = nextValue9;


            }

        }
    </script>
</head>
<body onload="loadXMLDoc()">
    <form id="form1" runat="server">
        <div class="container">

        <div class="header">
            <h1><b>gateWay</b><span id="purpleSchool"><b>School</b></span><span id="greenAccount"><b>Account.com</b></span></h1>
        </div>

        <div class="middle">
            <table>
                <tr>
                    <td>toll free phone:</td>
                    <td id="tollID"></td>
                </tr>
                <tr>
                    <td>direct_phone:</td>
                    <td id="dirPhone"></td>
                </tr>
                <tr>
                    <td>fax:</td>
                    <td id="fax"></td>
                </tr>
                <tr>
                    <td>email:</td>
                    <td id="email"></td>
                </tr>
                <tr>
                    <td>address_line1:</td>
                    <td id="add1"></td>
                </tr>
                <tr>
                    <td>address_line2:</td>
                    <td id="add2"></td>
                </tr>
                <tr>
                    <td>city:</td>
                    <td id="city"></td>
                </tr>
                <tr>
                    <td>state:</td>
                    <td id="state"></td>
                </tr>
                <tr>
                    <td>zip:</td>
                    <td id="zip"></td>
                </tr>
            </table>

            <button id="more" type="button" onclick="location.href='stuPage.aspx'">Click here to send your message to support staff</button>
        </div>

    </div>
    </form>
</body>
</html>
