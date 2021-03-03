<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <%-- 웹페이지 아이콘 --%>
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon"/>
    <link rel="icon" href="img/favicon.ico" type="image/x-icon"/>
    <title>Simple Web Board</title>

    <script src="https://kit.fontawesome.com/b775a6b6a2.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/index.css" type="text/css">
</head>
<body>

<header>

    <logo class="btn"><i class="far fa-kiss-wink-heart"></i>
        <h1>Logo</h1></logo>

    <nav-bar>
        <ul class="nav-links">
            <li><a class="btn" href="#">Login</a></li>
            <li><a class="btn" href="#">Register</a></li>
            <li><a class="btn" href="#">Board</a></li>
            <li><a class="btn" href="#">Post</a></li>
            <li><a class="btn" href="#">Post</a></li>
            <li><a class="btn" href="#">Post</a></li>
            <li><a class="btn" href="#">Post</a></li>
        </ul>
        <div class="burger btn">
            <div class="line1"></div>
            <div class="line2"></div>
            <div class="line3"></div>
        </div>

    </nav-bar>

</header>

<main>
    <section>
        <article class="pic">
            Pic
        </article>
        <article class="text">
            Text
        </article>
        <article>
            article
        </article>
        <article>
            article
        </article>
        <article>
            article
        </article>
        <article>
            article
        </article>

    </section>

</main>

<footer>footer</footer>
<%--

<c:if test="${not empty display }">
    <jsp:include page="${display }"/>
</c:if>
<c:if test="${empty display }">
    <h3>Welcome!! <br>
    </h3>
    <i class="far fa-kiss-wink-heart btn-page"></i>
</c:if>
--%>

<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script src="js/index.js"></script>
</body>
</html>