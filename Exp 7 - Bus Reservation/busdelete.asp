<%
	set conn=server.createobject("ADODB.connection")
	conn.provider="Microsoft.jet.OLEDB.4.0"
	conn.open(server.mappath("Database.mdb"))
	id=request.form("id")
	sql="delete from bus where id="&id&""
	conn.execute(sql)
	response.redirect("adminpage.asp")	
%>