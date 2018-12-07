<%
    Response.ContentType = "application/vnd.ms-word"
    Response.AddHeader "Content-Disposition", "attachment; filename=marksheet.doc;"
%>


<html>

    <head>
        
        <title>Mark Sheet</title>
    </head>

    <body bgcolor=yellow>
        <br />
        <h1 align=center>Mark Sheet</h1>
        <fieldset>
        <br />
        <legend>Mark Sheet</legend>
            <table border="1" align="center">
                <tr>
                    <td width="130px">Name</td>
                    <td width="200px"> : &nbsp;
                        <%response.write(request.Form("name"))%>
                    </td>
                </tr>
                <tr>
                    <td>Register No.</td>
                    <td> : &nbsp;
                        <%response.write(request.Form("regno"))%>
                    </td>
                </tr>
                <tr>
                    <td>Semester</td>
                    <td> : &nbsp;
                        <%response.write(request.Form("sem"))%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%response.write(request.Form("Select1"))%>
                    </td>
                    <td> : &nbsp;
                        <%response.write(request.Form("sub1"))%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%response.write(request.Form("Select2"))%>
                    </td>
                    <td> : &nbsp;
                        <%response.write(request.Form("sub2"))%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%response.write(request.Form("Select3"))%>
                    </td>
                    <td> : &nbsp;
                        <%response.write(request.Form("sub3"))%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%response.write(request.Form("Select4"))%>
                    </td>
                    <td> : &nbsp;
                        <%response.write(request.Form("sub4"))%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%response.write(request.Form("Select5"))%>
                    </td>
                    <td> : &nbsp;
                        <%response.write(request.Form("sub5"))%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%response.write(request.Form("Select6"))%>
                    </td>
                    <td> : &nbsp;
                        <%response.write(request.Form("sub6"))%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%response.write(request.Form("Select7"))%>
                    </td>
                    <td> : &nbsp;
                        <%response.write(request.Form("sub7"))%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%response.write(request.Form("Select8"))%>
                    </td>
                    <td> : &nbsp;
                        <%response.write(request.Form("sub8"))%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%response.write(request.Form("Select9"))%>
                    </td>
                    <td> : &nbsp;
                        <%response.write(request.Form("sub9"))%>
                    </td>
                </tr>
                <tr>
                    <td>
                        CGPA
                    </td>
                    <td> : &nbsp;
                        <%response.write((cint(request.Form("sub1")) + cint(request.Form("sub2")) + cint(request.Form("sub3")) + cint(request.Form("sub4")) + cint(request.Form("sub5")) + cint(request.Form("sub6")) + cint(request.Form("sub7")) + cint(request.Form("sub8")) + cint(request.Form("sub9")))/9)%>
                    </td>
                </tr>
                <tr>
                <td></td>
                <td><input type="button" onclick="word" value="Download as Word"/></td>
                </tr>
            </table>
        </fieldset>
    </body>
</html>