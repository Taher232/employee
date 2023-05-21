<%--
  Created by IntelliJ IDEA.
  User: TaherCh
  Date: 20/05/2023
  Time: 4:56 pm
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Employee Records</title>
  <style>
    body {
      font-family: Arial, sans-serif;
    }

    h1 {
      text-align: center;
    }

    table {
      width: 100%;
      border-collapse: collapse;
    }

    table th, table td {
      padding: 8px;
      text-align: left;
      border-bottom: 1px solid #ddd;
    }
  </style>
</head>
<body>
<h1>Employee Records</h1>
<table>
  <thead>
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Age</th>
  </tr>
  </thead>

  <tbody>
  <% for (Employee employee : (List<Employee>)request.getAttribute("employees")) { %>
  <tr>
    <td><%= employee.getId() %></td>
    <td><%= employee.getName() %></td>
    <td><%= employee.getAge() %></td>
  </tr>
  <% } %>
  </tbody>

</table>
</body>
</html>
