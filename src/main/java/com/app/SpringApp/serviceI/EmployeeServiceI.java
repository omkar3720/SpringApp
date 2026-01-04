package com.app.SpringApp.serviceI;

import com.app.SpringApp.model.Employee;

import java.util.List;

public interface EmployeeServiceI {
    void saveEmployee(Employee employee);

    List<Employee> loginEmployee(String username, String password);

    Employee editStudent(int id);

    void updateData(Employee e);

    List<Employee> findallData();

    void deleteData(int id);
}
