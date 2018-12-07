<%
    set conn = server.createobject("ADODB.Connection")
    conn.provider="Microsoft.jet.OLEDB.4.0"
    conn.open(server.mappath("Database1.mdb"))
    sql="delete from temp1 where name='Kavi'"
    conn.execute(sql)
%>
