<html>

    <head>
        <title>E-Kart</title>
    </head>

    <body>
        <!--#include file="header.html"-->
        
        <form method="post" action="next.asp">
	        <fieldset>
                <legend>Checkout</legend>
    		    
                <table align="center"><br />
    	    		<tr width="140" height="40">
	    	    		<td>Card Number</td>
		    	    	<td>:&nbsp; <input type="text" name="cardno" id="cardno" /></td>
    		    	</tr>
    	    		<tr width="140" height="40">
	    	    		<td>Total no of Books</td>
		    	    	<td>:&nbsp; <%=request.Form("noofbooks") %></td>
    		    	</tr>
    	    		<tr width="140" height="40">
	    	    		<td>Total Cost of Books</td>
		    	    	<td>:&nbsp; <%=request.Form("noofbooks")*250 %></td>
    		    	</tr>
                    <tr width="140" height="40">
		        		<td></td>
                        <td><input type="submit" id="next" name="next" value="Next" /></td>
        			</tr>
	        	</table>
    	    
            </fieldset>
        </form>
    
        <!--#include file="footer.html"-->
    </body>

</html>

