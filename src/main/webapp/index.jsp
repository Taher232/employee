<%@ page import="com.example.javaprojet.Employee" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Employee Records</title>
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
  <%
    if((List<Employee>)request.getAttribute("employees") != null){

  %>
  <tbody>
  <%
    List<Employee> list = (List<Employee>)request.getAttribute("employees");
    for (Employee employee : list ) { %>
  <tr>
    <td><%= employee.getName() %></td>
    <td><%= employee.getId() %></td>
    <td><%= employee.getAge() %></td>
  </tr>
  <% } %>
  </tbody>
  <%
    }
  %>
</table>
</body>
</html>
