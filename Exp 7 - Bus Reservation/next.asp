<html>
	<head>
		<title>Details</title>
		<link rel="stylesheet" href="style.css">
	</head>
	
	<body>
		<!--#include file="header.html"-->
		
		<%
			i=cint(request.form("selectbus"))
			set conn=server.createobject("ADODB.connection")
			conn.provider="Microsoft.jet.OLEDB.4.0"
			conn.open(server.mappath("Database.mdb"))
			set rs=server.createobject("ADODB.recordset")
			sql="select * from bus where ID="&i&""
			rs.open sql, conn
		%>
		<form method="post" action="reserve.asp">
			<br />
			<input type="hidden" name="selectbus" value="<%response.write(rs("busname"))%>">
			<input type="hidden" name="busid" value="<%response.write(rs("id"))%>">
			<fieldset>
				<legend>Enter Details</legend>
				<table border="0" align="center">
					<tr>
						<td> Passenger Name </td>
						<td>: <input type="text" name="name"> </td>
					</tr>	
					<tr>
						<td> Email </td>
						<td>: <input type="text" name="email"> </td>
					</tr>	
					<tr>
						<td> Bus Selected </td>
						<td>: <% response.write(rs("busname")) %> </td>
					</tr>	
					<tr>
						<td> Fare </td>
						<td>: <% response.write(rs("fare")) %> </td>
					</tr>	
					<tr>
						<td> Timings </td>
						<td>: <% response.write(rs("timings")) %> </td>
					</tr>	
					<tr>
						<td><td>
						<td> <input type="submit" value="Reserve"> <td>
					</tr>
				</table>
			</fieldset>
			<br />
		</form>
		
		<!--#include file="footer.html"-->
	</body>
</html> 