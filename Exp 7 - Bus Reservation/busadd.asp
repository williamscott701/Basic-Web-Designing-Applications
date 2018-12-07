<%
    set conn = server.createobject("ADODB.Connection")
    conn.provider="Microsoft.jet.OLEDB.4.0"
    conn.open(server.mappath("Database.mdb"))
    a=request.form("busname")
    b=request.form("source")
    c=request.form("destination")
    d=cint(request.form("rs"))
    e=cint(request.form("ts"))
    f=cint(request.form("fare"))
    g=request.form("timings")
    sql="insert into bus (busname, source, destination, rs, ts, fare, timings) values('"&a&"', '"&b&"', '"&c&"', "&d&", "&e&", "&f&", '"&g&"')"
    conn.execute(sql)
	response.redirect("adminpage.asp")
%>