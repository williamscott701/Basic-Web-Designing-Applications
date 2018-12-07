<html>

    <head>
        <title>E-Kart</title>
    </head>

    <body>
        <!--#include file="header.html"-->
        
        <%
            Response.Cookies(request.Form("cardno"))("cardname")=Request.Form("cardname")
            Response.Cookies(request.Form("cardno"))("expirydate")=Request.Form("expirydate")
        %>

        <form method="post" action="done.asp">
            <input type="hidden" id="cardno" name="cardno" value="<%=request.form("cardno") %>" />
	        <fieldset>
                <legend>Checkout</legend>
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
                    <tr width="140" height="40">
		        		<td></td>
                        <td><input type="submit" id="download" name="download" value="Download as Doc" /></td>
        			</tr>
	        	</table>
    	    
            </fieldset>
        </form>
    
        <!--#include file="footer.html"-->
    </body>

</html>

