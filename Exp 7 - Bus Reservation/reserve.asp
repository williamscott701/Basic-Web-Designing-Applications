<html>
	<head>
		<title>Reservation Page</title>
		<link rel="stylesheet" href="style.css">
	</head>
	
	<body>
		<!--#include file="header.html"-->
		
		<%
			i=cint(request.form("busid"))
			set conn=server.createobject("ADODB.connection")
			conn.provider="Microsoft.jet.OLEDB.4.0"
			conn.open(server.mappath("Database.mdb"))
			name=request.form("name")
			email=request.form("email")
			bus=request.form("selectbus")
			sql="insert into registration (pname, email, busname) values ('"&name&"', '"&email&"', '"&bus&"')"
			conn.execute(sql)
    		set rs=server.createobject("ADODB.recordset")
    		sqla="select * from bus where id="&i&""
    		rs.open sqla, conn, 1, 2
    		rs("rs")=cint(rs("rs"))-1
    		rs.update()
		%>
		
		<h4 style="position:relative; left:10%;">Reservation Successful for <em><%response.write(name)%></em> in bus <em><%response.write(bus)%></em></h4>
		
		<!--#include file="footer.html"-->
	</body>
</html> 