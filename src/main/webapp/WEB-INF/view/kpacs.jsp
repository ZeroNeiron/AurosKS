<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style><%@include file="/WEB-INF/css/style.css"%></style>
    <title>K-PACs</title>
</head>
<body>
    <table class="table">
        <thead>
            <tr>
                <th>Id:</th>
                <th>Title:</th>
                <th>Description:</th>
                <th>Creation Date:</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${kPacData}" var="data">
                <tr>
                    <th>${data.id}</th>
                    <th>${data.title}</th>
                    <th>${data.description}</th>
                    <th>${data.creationDate}</th>
                    <th>
                        <form:form method="delete" action="/kpacs/${data.id}">
                            <input type="submit" value="DELETE">
                        </form:form>
                    </th>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <div class="form">
        <form:form method="post" action="/kpacs" modelAttribute="kPac">
            <div class="div">
                <label for="title">Title:</label><br>
                <form:input path="title" id="title"/>
            </div>
            <div class="div">
                <label for="description">Description:</label><br>
                <form:input path="description" id="description"/>
            </div>
            <div class="div">
                <input type="submit" title="SUBMIT">
            </div>
        </form:form>
    </div>
</body>
</html>
