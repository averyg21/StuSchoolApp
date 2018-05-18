var xmlDoc;
var xmlhttp;


function loadXMLDoc()
{
    
    xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = readData;
    xmlhttp.open("GET", "contact_info.xml", true);
    xmlhttp.send();
    
}

function readData()
{
    if (xmlhttp.readyState == 4)
    {
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
        alert("Hello");

        document.getElementById("info").innerHTML = tollFree;
        

        
    }

}
