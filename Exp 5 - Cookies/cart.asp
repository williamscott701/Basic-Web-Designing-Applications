<html>
    <head>
        <title>
            E-Kart
        </title>
    </head>

    <body>
        <!--#include file="header.html"-->
        <form method="post" action="checkout.asp">
            <fieldset>
                <legend><h4>My Cart</h4></legend>
                <h3 align="center">Total Books Selected are</h3> 
                <%i=0 %>
                <% if Not(request.Form("b1") = "") then
                    i=i+1
                    response.Write("<br> 2014 The Elections that Changed India <br />")
                    end if
                %><% if Not(request.Form("b2") = "") then
                    i=i+1
                     response.Write("<br> 7 Secrets of the Godess <br />")
                                        end if
                %><% if Not(request.Form("b3") = "") then
                    i=i+1
                    response.Write("<br> 99 Unforgettavle Fiction Non-Fiction Poetry Humour <br />")
                    end if
                %><% if Not(request.Form("b4") = "") then
                    i=i+1
                    response.Write("<br> Colorless Tsukuru Tazaki and his years of Pilgrimage <br />")
                    end if
                %><% if Not(request.Form("b5") = "") then
                    i=i+1
                    response.Write("<br /> And Then One Day <br />")
                    end if
                %><% if Not(request.Form("b6") = "") then
                    i=i+1
                    response.Write("<br> Be Careful What you Wish for <br />")
                    end if
                %>
                <input type="hidden" value="<%=response.write(i) %>"  id="noofbooks" name="noofbooks"/>
                <br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="submit" value="Continue to Checkout" />
            </fieldset>
        </form>
        <!--#include file="footer.html"-->
    </body>
</html>