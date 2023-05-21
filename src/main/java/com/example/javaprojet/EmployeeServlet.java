package com.example.javaprojet;


import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "employeeServlet",value = "/employee-servlet")
public class EmployeeServlet extends HttpServlet {
    private EmployeeDAO employeeDAO;

    @Override
    public void init() throws ServletException {
        employeeDAO = new EmployeeDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Employee> employees = employeeDAO.getAllEmployees();
        request.setAttribute("employees", employees);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    // Implement other CRUD operations (doPost, doPut, doDelete)



    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get employee details from the request parameters
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));

        // Create a new Employee object
        Employee employee = new Employee(id, name, age);

        // Add the new employee to the database
        employeeDAO.createEmployee(employee);

        // Redirect to the employee list page
        response.sendRedirect("employees");
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get employee details from the request parameters
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));

        // Create a new Employee object
        Employee employee = new Employee(id, name, age);

        // Update the employee in the database
        employeeDAO.updateEmployee(employee);

        // Redirect to the employee list page
        response.sendRedirect("employees");
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get the employee ID from the request parameter
        int id = Integer.parseInt(request.getParameter("id"));

        // Delete the employee from the database
        employeeDAO.deleteEmployee(id);

        // Redirect to the employee list page
        response.sendRedirect("employees");
    }
}


