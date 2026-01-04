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

    @Override
    public Employee editStudent(int id) {
        return eri.findById(id).get();
    }

    @Override
    public void updateData(Employee e) {
        Employee em = eri.findById(e.getCid()).get();
        em.setCname(e.getCname());
        em.setCaddress(e.getCaddress());
        em.setCmobNo(e.getCmobNo());
        em.setUsername(e.getUsername());
        em.setPassword(e.getPassword());
        eri.save(em);

    }

    @Override
    public List<Employee> findallData() {
        return eri.findAll();
    }

    @Override
    public void deleteData(int id) {
        eri.deleteById(id);
    }
}
