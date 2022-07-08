<%@ page contentType="text/html;charset=UTF-8"%>
<%@taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <style><%@include file="/WEB-INF/css/style.css"%></style>
    <title>K-Pac Sets</title>
</head>
<body>
    <table class="table">
        <tr>
            <th>Id:</th>
            <th>Title:</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${kPacSetData}" var="data">
            <tr>
                <th>${data.id}</th>
                <th><a href="/set/${data.id}">${data.title}</a></th>
                <th>
                    <form:form method="delete" action="/sets/${data.id}">
                        <input type="submit" value="DELETE">
                    </form:form>
                </th>
            </tr>
        </c:forEach>
    </table>
    <div class="form">
        <form:form method="post" action="/sets" modelAttribute="kPacSet">
            <div class="div">
                <label for="title">Name of the new K-PAC Set:</label><br>
                <form:input path="title" id="title"/>
            </div>
            <div class="div">
            <form:select path="knowledgePackages" cssClass="select" items="${kPacData}" itemValue="id" itemLabel="title" multiple="true"/>
            </div>
            <div class="div">
            <input type="submit" title="SUBMIT">
            </div>
        </form:form>
    </div>
</body>
</html>
