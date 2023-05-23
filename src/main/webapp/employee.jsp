<%--
  Created by IntelliJ IDEA.
  User: TaherCh
  Date: 20/05/2023
  Time: 4:56 pm
  To change this template use File | Settings | File Templates.
--%>

<%@ page import="com.example.javaprojet.Employee" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Employee Records</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    body {
      padding: 20px;
    }

    h1 {
      margin-bottom: 20px;
    }

    .btn-container {
      margin-bottom: 20px;
    }
  </style>
</head>
<body>
<div class="container">
  <h1>Employee Records</h1>

  <div class="btn-container">
    <button class="btn btn-primary" data-toggle="modal" data-target="#createModal">Create Employee</button>
  </div>

  <table class="table table-striped">
    <thead>
    <tr>
      <th>ID</th>
      <th>Name</th>
      <th>Age</th>
      <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <%-- Employee data --%>
    <% List<Employee> employees = Employee.getEmployees(); %>
    <% for (Employee employee : employees) { %>
    <tr>
      <td><%= employee.getId() %></td>
      <td><%= employee.getName() %></td>
      <td><%= employee.getAge() %></td>
      <td>
        <button class="btn btn-info" data-toggle="modal" data-target="#editModal">Edit</button>
        <button class="btn btn-danger" data-toggle="modal" data-target="#deleteModal">Delete</button>
      </td>
    </tr>
    <% } %>
    </tbody>
  </table>
</div>

<!-- Create Employee Modal -->
<div class="modal fade" id="createModal" tabindex="-1" role="dialog" aria-labelledby="createModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="createModalLabel">Create Employee</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <label for="createName">Name</label>
            <input type="text" class="form-control" id="createName" placeholder="Enter name">
          </div>
          <div class="form-group">
            <label for="createAge">Age</label>
            <input type="number" class="form-control" id="createAge" placeholder="Enter age">
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
        <button type="button" class="btn btn-primary">Save</button>
      </div>
    </div>
  </div>
</div>

<!-- Edit Employee Modal -->
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby
