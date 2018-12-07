<html>
    <head>
        <title>Admin Login page</title>
        <script language="javascript" type="text/javascript">
            function check()
            {
               if (login.userid.value == "ur12cs135" && login.pswrd.value == "6477") {
                   window.location="adminpage.asp";
                }
                else {
                    alert("Invalid Password or Username")
                }
            }
        </script>
		<link rel="stylesheet" href="style.css"><link rel="stylesheet" href="style.css">
    </head>

    <body>
		<!--#include file="header.html"-->
		
        <h1>Admin Login Page</h1>
        <form name="login">
			<br />&nbsp;&nbsp;
            Username: <input type="text" name="userid"/>
            Password: <input type="password" name="pswrd"/>
            <input type="button" onclick="check()" value="Login"/>
			<br /><br />
        </form>
		
		<!--#include file="footer.html"-->
    </body>
</html>