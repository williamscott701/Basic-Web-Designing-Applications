<html>
    <head>
        <title>Online Movie Tickets</title>
        <style>
            td{text-align:center;}
        </style>
    </head>

    <body style="font-family:Arial;">    
        <!--#include file="header.html"-->
        <form method="post" action="next.asp">
           <table align="center" border="1" cellpadding="8%" cellspacing="3" style="border-style:solid; border-color:White;">
                <tr>
                    <th> Movie List </th>
                    <th> No. of Seats Remaining</th>
                    <th>Select</th>
                </tr>
                <tr>
                    <td> Show 1 </td>
                    <td> <%response.Write(Application("show1"))%> </td>
                    <td> <input type="radio" name="r1" value="show1"/> </td>
                </tr>
                <tr>
                    <td> Show 2 </td>
                    <td> <%response.Write(Application("show2"))%> </td>
                    <td> <input type="radio" name="r1" value="show2"/> </td>
                </tr>
                <tr>
                    <td> Show 3 </td>
                    <td> <%response.Write(Application("show3"))%> </td>
                    <td> <input type="radio" name="r1" value="show3"/> </td>
                </tr>
                <tr>
                    <td> Show 4 </td>
                    <td> <%response.Write(Application("show4"))%> </td>
                    <td> <input type="radio" name="r1" value="show4"/> </td>
                </tr>
                <tr>
                    <td> Show 5 </td>
                    <td> <%response.Write(Application("show5"))%> </td>
                    <td> <input type="radio" name="r1" value="show5"/> </td>
                </tr>
                <tr>
                    <td> Show 6 </td>
                    <td> <%response.Write(Application("show6"))%> </td>
                    <td> <input type="radio" name="r1" value="show6"/> </td>
                </tr>
               <tr>
                   <td></td>
                   <td></td>
                   <td> <input type="submit" value="Pay and Book" /> </td>
               </tr>
            </table>
        </form>

        <!--#include file="footer.html"-->

	</body>
</html>
