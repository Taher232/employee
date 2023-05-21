<%--
  Created by IntelliJ IDEA.
  User: TaherCh
  Date: 20/05/2023
  Time: 4:53 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <style>
        body {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .login-form {
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 5px;
        }

        .login-form label,
        .login-form input[type="text"],
        .login-form input[type="password"] {
            display: block;
            margin-bottom: 10px;
        }

        .login-form input[type="submit"] {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }
    </style>
</head>
<body>
<div class="login-form">
    <h1>Login</h1>
    <form action="login" method="POST">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
        <input type="submit" value="Login">
    </form>
</div>
</body>
</html>
