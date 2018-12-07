<%
set conn=server.createobject("ADODB.connection")
conn.provider="Microsoft.jet.OLEDB.4.0"
conn.open=server.mappath("Database.mdb")
set rs=server.createobject("ADODB.recordset")
sql="select * from A"
rs.open sql, conn
do until rs.eof
response.write(rs("name"))%> &nbsp;<%
response.write(rs("password"))%> <br /><%
rs.movenext()
loop
%>