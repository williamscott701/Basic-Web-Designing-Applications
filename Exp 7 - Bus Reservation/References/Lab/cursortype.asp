<%
    set conn = server.createobject("ADODB.Connection")
    conn.provider="Microsoft.jet.OLEDB.4.0"
    conn.open(server.mappath("Database1.mdb"))
    set rs=server.createobject("ADODB.recordset")
    sql="select * from temp1"
    rs.open sql, conn, 1, 2
    rs.addnew()
    rs("name")="ght"
    rs("no")="asdert"
    rs.update()
%>
