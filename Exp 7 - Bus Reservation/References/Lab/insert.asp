<%
    set conn = server.createobject("ADODB.Connection")
    conn.provider="Microsoft.jet.OLEDB.4.0"
    conn.open(server.mappath("Database1.mdb"))
    a=request.form("name")
    b=request.form("email")
    c=request.form("busname")
    sql="insert into registration (pname, email, busname) values('"&a&"', '"&b&"', '"&c&"')"
    conn.execute(sql)
	response.redirect("adminpage.asp")
%>