package com.app.SpringApp.serviceImpl;

import com.app.SpringApp.model.Employee;
import com.app.SpringApp.repoI.EmployeeRepoI;
import com.app.SpringApp.serviceI.EmployeeServiceI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeServiceImpl  implements EmployeeServiceI
{
    @Autowired
    EmployeeRepoI eri;

    @Override
    public void saveEmployee(Employee employee) {
        eri.save(employee);
    }

    @Override
    public List<Employee> loginEmployee(String username, String password) {
        if(username.equals("admin") && password.equals("admin"))
        {
            return eri.findAll();
        }
        else
        {
            return eri.findByUsernameAndPassword(username,password);
        }
    }
}
