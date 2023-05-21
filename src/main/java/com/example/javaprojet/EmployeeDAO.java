package com.example.javaprojet;

import com.example.javaprojet.*;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDAO {
    private Connection connection;
    private final String url = "jdbc:postgresql://localhost:5432/tutdb";
    private final String username ="postgres";
    private final String password = "2020";

    public EmployeeDAO() {
        try {
            Class.forName("org.postgresql.Driver");
            connection = DriverManager.getConnection(url, username, password);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public List<Employee> getAllEmployees() {
        List<Employee> employees = new ArrayList<>();
        String query = "SELECT * FROM employee";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                Employee employee = new Employee();
                employee.setId(resultSet.getInt("id"));
                employee.setName(resultSet.getString("name"));
                employee.setAge(resultSet.getInt("age"));
                employees.add(employee);
            }
            resultSet.close();
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return employees;
    }

    public void updateEmployee(Employee employee) {
        try (
             PreparedStatement statement = connection.prepareStatement("UPDATE employees SET name = ?, age = ? WHERE id = ?")) {

            statement.setString(1, employee.getName());
            statement.setInt(2, employee.getAge());
            statement.setInt(3, employee.getId());

            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void createEmployee(Employee employee) {
        try (
             PreparedStatement statement = connection.prepareStatement("INSERT INTO employees (id, name, age) VALUES (?, ?, ?)")) {

            statement.setInt(1, employee.getId());
            statement.setString(2, employee.getName());
            statement.setInt(3, employee.getAge());

            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public void deleteEmployee(int id) {
        try (
             PreparedStatement statement = connection.prepareStatement("DELETE FROM employees WHERE id = ?")) {

            statement.setInt(1, id);

            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        EmployeeDAO e = new EmployeeDAO();
        List<Employee> ee = e.getAllEmployees();
        System.out.println(ee.size());
        System.out.println(ee.get(0).getName());
    }
}
