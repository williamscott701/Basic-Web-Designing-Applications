<%
    set conn = server.createobject("ADODB.Connection")
    conn.provider="Microsoft.jet.OLEDB.4.0"
    conn.open(server.mappath("Database1.mdb"))
    set rs=server.createobject("ADODB.recordset")
    sql="select * from temp1"
    rs.open sql, conn
    do until rs.eof
        response.write(rs("name") & "&nbsp;")
        response.write(rs("no") & "<br> <br>")
        rs.movenext()
    loop
%>
