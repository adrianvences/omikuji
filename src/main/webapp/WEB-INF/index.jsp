
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
    <title>Omikuji</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script><!-- change to match your file/naming structure -->
</head>
<body>
<div class="container d-flex justify-content-center bg-dark mt-3 shadow-lg mb-5 rounded" style="width: 20rem; height:auto;">
  <div class="card align-items-center bg-dark" style="width: 19rem;">
    <div class="card-body bg-dark card align-items-center  ">
      <h1 class="text-light">Omikuji</h1>
      <form action="/omikuji/show" method="POST">
        <div class="form-control bg-primary card align-items-center ">
          Enter the name of the city: 
          <input type="text" name="city" id="" class=" mt-2">
          <br>
          Enter the name of any real person:
          <input type="text" name="name" id="" class="mt-2">
          <br>
          Enter professional endeavor or hobby: 
          <input type="text" name="hobby" id="" class="mt-2">
          <br>
          Enter any type of living thing: 
          <input type="text" name="thing" id="" class="mt-2">
          <br>
          say something nice to someone: 
          <input type="text" name="compliment" id="" class="mt-2">
          <br>
          <br>
          <p>Send and show a friend</p>
          <br>
          <input class="btn btn-dark shadow mb-5 rounded " type="submit" value="send" >
        </div>
      
    </div>
  </div>
</div>
</body>
</html>
