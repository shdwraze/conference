<%@ page import="com.conference.service.EventService" %><%--
  Created by IntelliJ IDEA.
  User: y.chernonog
  Date: 01.12.2022
  Time: 14:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="../css/welcomePage.css">

    <title>Account</title>
</head>

<body>
<div class="container">
    <!-- <select class="change-lang">
        <option value="ua">UA</option>
        <option value="en">EN</option>
    </select>  -->

    <div class="container-left">
        <!-- <div id="word" class="lng-text cssanimation hu__hu__">Oops. It will be a digital paper</div> -->
        <div class="logo-user">
            <div class="photo-user">
                <img src="" alt="">
            </div>
        </div>
        <div class="contacts">
            <p class="email">qwerty@qwerty.com</p>
            <p class="phone">000-000-00-00</p>
        </div>
        <div class="edit-buttons">
            <form action="<%= request.getContextPath() %>/settings">
                <button>Edit</button>
            </form>
            <form action="<%= request.getContextPath() %>/logout">
                <button>Log Out</button>
            </form>
        </div>
    </div>

    <div class="container-center scroll">
        <c:forEach items="${events}" var="event">

            <div class="container-article">
                <div class="conference-header">
                    <h2>${event.name}</h2>
                </div>
                <div class="conference-main">
                    <p>${event.describe}</p>
                    <p>${event.date}</p>
                    <p>${event.place}</p>
                    <br>
                    <p>Topics:</p>
                    <c:forEach items="${event.topics}" var="topic">
                        <p>${topic.name}</p>
                    </c:forEach>
                </div>
                <div>

                </div>
                <div class="conference-footer">
                    <button>Speaker</button>
                    <button>Join</button>
                </div>
            </div>
        </c:forEach>
    </div>

    <div class="container-right">
        <form action="<%= request.getContextPath() %>/eventRegistration">
            <button>Add event</button>
        </form>
    </div>
</div>


<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.19.1/TweenMax.min.js"></script>
<script type="text/javascript" src="../js/cssanimation-gsap.js"></script>
<script type="module" src="../js/lang.js"></script>
<script type="module" src="../js/changeLang.js"></script>
</body>


</html>
