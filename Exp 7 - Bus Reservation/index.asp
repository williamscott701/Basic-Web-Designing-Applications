<html>
	<head>
		<title>Online Bus Reservation</title>
		<link rel="stylesheet" href="style.css">
	</head>
	
	<body>
		<!--#include file="header.html"-->
		
		<%
			set conn=server.createobject("ADODB.connection")
			conn.provider="Microsoft.jet.OLEDB.4.0"
			conn.open(server.mappath("Database.mdb"))
			set rs=server.createobject("ADODB.recordset")
			sql="select * from bus"
			rs.open sql, conn
		%>
		<form method="post" action="next.asp">
			<br />
			<fieldset>
				<legend>Current Bus Details</legend>
				<table border="1" align="center">
					<tr>
						<th>Bus Name</th>
						<th>Source</th>
						<th>Destination</th>
						<th>Remaining Seats</th>
						<th>Total Seats</th>
						<th>Timings</th>
						<th>Select</th>
					</tr>
					<% do until rs.eof %>
					<tr>
						<td> <% response.write(rs("busname")) %> </td>
						<td> <% response.write(rs("source")) %> </td>
						<td> <% response.write(rs("destination")) %> </td>
						<td> <% response.write(rs("rs")) %> </td>
						<td> <% response.write(rs("ts")) %> </td>
						<td> <% response.write(rs("timings")) %> </td>
						<td align="center">
							<input type="radio" name="selectbus" value="<%response.write(rs("ID"))%>"
						</td>
					</tr>
					<%
						i=i+1
						rs.movenext() 
						loop 
					%>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td><input type="submit" value="Next"></td>
					</tr>
				</table>
			</fieldset>
			<br />
		</form>
		
		<!--#include file="footer.html"-->
	</body>
</html>