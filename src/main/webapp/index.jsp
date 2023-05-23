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
    if ((List<Employee>) request.getAttribute("employees") != null) {

  %>
  <tbody>
  <%
    List<Employee> list = (List<Employee>) request.getAttribute("employees");
    for (Employee employee : list) { %>
  <tr>
    <td><%= employee.getName() %></td>
    <td><%= employee.getId() %></td>
    <td><%= employee.getAge() %></td>
    <td>
      <button onclick="deleteEmployee('<%= employee.getId() %>')">Delete</button>
    </td>
  </tr>
  <% } %>
  </tbody>
  <%
    }
  %>
</table>

<script>
  function deleteEmployee(employeeId) {
    let xhr = new XMLHttpRequest();
    console.log(employeeId)
    xhr.open('DELETE', '${pageContext.request.contextPath}/employee-servlet?id='+ employeeId, true);
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    xhr.setRequestHeader("id",employeeId);
    xhr.onreadystatechange = function() {
      if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
      }
    };
    xhr.send('_method=delete&id=' + encodeURIComponent(employeeId));
  }
</script>

</body>
</html>