<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=utf-8" %>
<html>
<head>
    <link rel="stylesheet" href="../css/editEvent.css">
    <title>All topics</title>
</head>
<body>
<div class="container">

    <table>
        <tr>
            <th>Name</th>
            <th>Event</th>
            <th>Data</th>
        </tr>
        <%--        <jsp:useBean id="event" scope="request" type="java.util.List"/>--%>
        <c:forEach items="${topics}" var="topic">
            <tr>
                <td>${topic.name}</td>

                <td>

                </td>
            </tr>
        </c:forEach>
    </table>
    <form>
        <input class="back-btn" type="button" value="Back" onclick="history.back()">
    </form>
</div>
</body>
</html>
