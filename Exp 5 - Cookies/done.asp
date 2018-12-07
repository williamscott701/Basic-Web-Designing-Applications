<%
    Response.ContentType = "application/vnd.ms-word"
    Response.AddHeader "Content-Disposition", "attachment; filename=record.doc;"
%>

<table align="center"><br />
    <tr width="140" height="40">
        <td>Card Number</td>
        <td>:<%= request.Cookies(request.Form("cardno"))("cardno") %></td>
    </tr>
    <tr width="140" height="40">
        <td>Card Name</td>
        <td>:<%= request.Cookies(request.Form("cardno"))("cardname") %></td>
    </tr>
    <tr width="140" height="40">
        <td>Expiry Details</td>
        <td>:<%= request.Cookies(request.Form("cardno"))("expirydate") %></td>
    </tr>
    <tr width="140" height="40">
        <td>Total Visits to this Site</td>
        <td>:<%= request.Cookies(request.Form("cardno"))("count") %></td>
    </tr>
</table>