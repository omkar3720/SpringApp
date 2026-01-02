package com.app.SpringApp.repoI;

import com.app.SpringApp.model.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface EmployeeRepoI extends JpaRepository<Employee,Integer> {
    List<Employee> findByUsernameAndPassword(String username, String password);
}
