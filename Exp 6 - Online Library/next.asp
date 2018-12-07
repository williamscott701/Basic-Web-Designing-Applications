<html>

<head>
    <title>Movie</title>
    <style>
        #story
        {
            width: 50%;
            position: relative;
            left: 25%;
            text-align: center;
        }
        #name
        {
            font-family: Calibri Light;
            text-align: center;
            font-size: 2em;
            line-height: 2em;
        }
        #genre, #score
        {
            text-align: right;
            position: relative;
            right: 24%;
        }
    </style>
</head>

<body>
    <!--#include file="header.html"-->
    
    <%
        if(application(Request.Form("r1")) > "0" and application("sessions") < "3") then
            Application(request.Form("r1"))=Application(request.Form("r1"))-1
     %>
        <div style="font-family:Arial; position:relative; left:20%; line-height:1.6em;">You are registered for <tt style="font-family:Arial; line-height:1.6em; text-transform:uppercase;"><% response.write (request.Form("r1")) %></tt></div>
     <% 
        elseif(application(Request.Form("r1")) <= "0") then
            response.Redirect("over.asp")
        elseif(application("sessions") >= "3") then
            response.Redirect("max.asp")
        end if
     %>   
    
     <%   if(request.Form("r1")="show1") then %>
            <!--#include file="Articles/article1.html"-->
     <%   end if %>

     <%   if(request.Form("r1")="show2") then %>
            <!--#include file="Articles/article2.html"-->
     <%   end if %>

     <%   if(request.Form("r1")="show3") then %>
            <!--#include file="Articles/article3.html"-->
     <%   end if %>

     <%   if(request.Form("r1")="show4") then %>
            <!--#include file="Articles/article4.html"-->
     <%   end if %>
     
     <%   if(request.Form("r1")="show5") then %>
            <!--#include file="Articles/article5.html"-->
     <%   end if %>

     <%   if(request.Form("r1")="show6") then %>
            <!--#include file="Articles/article6.html"-->
     <%   end if %>

    <!--#include file="footer.html"-->

</body>
</html>