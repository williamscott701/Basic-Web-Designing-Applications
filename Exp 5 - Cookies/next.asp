<html>

    <head>
        <title>E-Kart</title>
    </head>

    <body>
        <!--#include file="header.html"-->

        <% if(request.Cookies(request.Form("cardno"))("count") = "") then 
                Response.Cookies(request.Form("cardno"))("cardno")=Request.Form("cardno")
                Response.Cookies(request.Form("cardno"))("count")=1
        %>
    		    <h5>Congratulations on your first Purchase</h5>
                <form method="post" action="register.asp">
                    <fieldset>
                        <legend>Enter Details</legend>
    		            <table align="center"><br />
    	    	    	    <tr width="140" height="40">
	    	            		<td>Card Number:</td>
		        	        	<td><input type="text" name="cardno" id="cardno" value="<%= request.form("cardno") %>"/></td>
            		    	</tr>
    	    	    	    <tr width="140" height="40">
	    	            		<td>Card Name:</td>
		        	        	<td><input type="text" name="cardname" id="cardname" /></td>
            		    	</tr>
    	    	    	    <tr width="140" height="40">
	    	            		<td>Expiry Date: </td>
		        	        	<td><input type="text" name="expirydate" id="expirydate" /></td>
            		    	</tr>
    	    	    	    <tr width="140" height="40">
	    	            		<td>PIN</td>
		        	        	<td><input type="password" name="pin" id="pin" /></td>
            		    	</tr>
                            <tr width="140" height="40">
		            		    <td></td>
                                <td><input type="submit" id="paynew" name="paynew" value="Pay" /></td>
        		    	    </tr>
	        	        </table>
        	        </fieldset>
                </form>
    
        <% else
                count1=request.Cookies(request.Form("cardno"))("count")
                count1=count1+1
                Response.Cookies(request.Form("cardno"))("count")=count1
                response.Write("Total Number of Visits: " & count1)
        %>

                <form method="post" action="register.asp">
                    <fieldset>
                        <legend>Enter Details</legend>
    		            <table align="center"><br />
    	    	    	    <tr width="140" height="40">
	    	            		<td>Card Number:</td>
		        	        	<td><input type="text" name="cardno" id="cardno" value="<%=request.Form("cardno") %>"/></td>
            		    	</tr>
    	    	    	    <tr width="140" height="40">
	    	            		<td>Card Name:</td>
		        	        	<td><input type="text" name="cardname" id="cardname" value="<%=request.Cookies(request.Form("cardno"))("cardname") %>" /></td>
            		    	</tr>
    	    	    	    <tr width="140" height="40">
	    	            		<td>Expiry Date: </td>
		        	        	<td><input type="text" name="expirydate" id="expirydate"  value="<%= request.Cookies(request.Form("cardno"))("expirydate") %>"  /></td>
            		    	</tr>
    	    	    	    <tr width="140" height="40">
	    	            		<td>PIN</td>
		        	        	<td><input type="password" name="pin" id="pin" /></td>
            		    	</tr>
                            <tr width="140" height="40">
		            		    <td></td>
                                <td><input type="submit" id="paynew" name="paynew" value="Pay" /></td>
        		    	    </tr>
	        	        </table>
        	        </fieldset>
                </form>
    
            <% end if%>    
        <!--#include file="footer.html"-->
    </body>

</html>

