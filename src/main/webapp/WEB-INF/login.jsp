<%--
  Created by IntelliJ IDEA.
  User: TaherCh
  Date: 20/05/2023
  Time: 4:53 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="styles.css">
    <script src="script.js"></script>
</head>
<body>
<div class="login-container">
    <h2>Login</h2>
    <form action="LoginController" method="post" onsubmit="return validateForm()">
        <div class="form-group">
            <label for="txtUserID">User ID</label>
            <input type="text" class="form-control" id="txtUserID" name="txtUserID" required>
        </div>
        <div class="form-group">
            <label for="txtPassword">Password</label>
            <input type="password" class="form-control" id="txtPassword" name="txtPassword" required>
        </div>
        <div class="error-message" id="errorMessage"></div>
        <button type="submit" class="btn btn-primary btn-block btn-login">Login</button>
    </form>
</div>
</body>
</html>
