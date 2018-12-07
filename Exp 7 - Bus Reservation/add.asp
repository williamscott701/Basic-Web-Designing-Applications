<%
    set conn = server.createobject("ADODB.Connection")
    conn.provider="Microsoft.jet.OLEDB.4.0"
    conn.open(server.mappath("Database.mdb"))
    a=request.form("name")
    b=request.form("email")
    c=request.form("busname")
    sql="insert into registration (pname, email, busname) values('"&a&"', '"&b&"', '"&c&"')"
    conn.execute(sql)
    set rs=server.createobject("ADODB.recordset")
    sql="select * from bus where busname='"&c&"'"
    rs.open sql, conn, 1, 2
	response.write(rs("rs"))
    rs("rs")=cint(rs("rs"))-1
    rs.update()
    response.redirect("adminpage.asp")
%>