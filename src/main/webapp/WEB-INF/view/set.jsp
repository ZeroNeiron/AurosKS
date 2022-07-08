<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style><%@include file="/WEB-INF/css/style.css"%></style>
    <title>K-Pac Set</title>
</head>
<body>
    <div>
        <table class="table">
            <thead>
                <tr>
                    <th>ID:</th>
                    <th colspan="3">${kPacSet.id}</th>
                </tr>
                <tr>
                    <th>Title:</th>
                    <th colspan="3">${kPacSet.title}</th>
                </tr>
                <tr>
                    <th colspan="4">K-PAC:</th>
                </tr>
                <tr>
                    <th>Id</th>
                    <th>Title</th>
                    <th>Description</th>
                    <th>Creation Date</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${kPacSet.knowledgePackages}" var="kPac">
                    <tr>
                        <th>${kPac.id}</th>
                        <th>${kPac.title}</th>
                        <th>${kPac.description}</th>
                        <th>${kPac.creationDate}</th>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
