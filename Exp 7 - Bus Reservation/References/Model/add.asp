<%
set conn=server.createobject("ADODB.connection")
conn.provider="Microsoft.jet.OLEDB.4.0"
conn.open=server.mappath("Database.mdb")
a=request.form("t1")
b=request.form("t2")
sql="insert into A values('"&a&"', '"&b&"')"
conn.execute(sql)
response.redirect("index.asp")
%>