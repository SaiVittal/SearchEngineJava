<%@page import= "java.util.ArrayList"%>
<%@page import= "com.Accio.HistoryResult"%>
<html>
    <head>
        <link rel = "stylesheet" type= "text/css" href = "style.css">
    </head

    <body>
        <form action = "Search">
            <input type = "text" name = "keyword">
            <button type = "Submit">Search</button>
        </form>
        <div class = "resultTable">
        <table border = 2>
            <tr>
                <td>keyword</td>
                <td>link</td>
            </tr>
            <%
                ArrayList<HistoryResult> results = (ArrayList<HistoryResult>) request.getAttribute("results");
                //Iterate thrugh arraylist
                for(HistoryResult results:results){
            %>
                <tr>
                    <td><%out.println(results.getKeyword());%></td>
                    <td><a href = "<%out.println(results.getLink());%>"><%out.println(results.getLink());%></a></td>
                </tr>
            <%
                }
            %>

        </table>
        </div>
    </body>
</html>