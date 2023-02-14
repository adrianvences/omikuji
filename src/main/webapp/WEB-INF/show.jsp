<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>omikuji</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script><!-- change to match your file/naming structure -->
</head>
<body>
  <div class="container align-items-center ">
    <div class="card bg-primary" style="width: 20rem;">
      <h1 class="bg-dark text-light">Heres your Omikuji</h1>
      In 10 years, you will live in
      <c:out value="${city}"/>
      with 
      <c:out value="${name}"/>
      as your roommate, selling
      <c:out value="${hobby}"/>.
      The next time you see a 
      <c:out value="${thing}"/>
      ,you will have good luck. Also,
      <c:out value="${compliment}"/>.
      <a class="btn btn-dark" href="/omikuji">go back</a>
    </div>
</body>
</html>
