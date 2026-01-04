package com.app.SpringApp.controller;

import com.app.SpringApp.model.Employee;
import com.app.SpringApp.serviceI.EmployeeServiceI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class EmployeeController
{

    @Autowired
    EmployeeServiceI esi;

@RequestMapping("/")
public String prelogin()
{
    return "login";
}

@RequestMapping("/openregister")
    public String openRegister()
{
    return "register";
}

@RequestMapping("/login")
    public String openlogin()
{
    return "login";
}

@RequestMapping("/register")
    public String saveEmployee(@ModelAttribute Employee employee )
{
     esi.saveEmployee(employee);
     return "login";
}

@RequestMapping("/loginacc")
    public String loginAccount(@RequestParam("username") String username, @RequestParam("password") String password, Model m)
{
    List<Employee> list = esi.loginEmployee(username,password);
    if(list!=null)
    {
        m.addAttribute("data",list);
        return "success";
    }
    else
    {
        m.addAttribute("msg","Please Enter Valid Credentials");
        return "login";
    }
}

@RequestMapping("edit")
    public String editStudent(@RequestParam("cid") int id,Model m)
{
    Employee em = esi.editStudent(id);
    m.addAttribute("employee",em);
    return "edit";
}

@RequestMapping("/update")
    public String updateData(@ModelAttribute Employee e,Model m)
{
    esi.updateData(e);
    List<Employee> list = esi.findallData();
    m.addAttribute("data",list);
    return "success";
}

@RequestMapping("/delete")
    public String deleteData(@RequestParam("cid") int id,Model m)
{
    esi.deleteData(id);
    List<Employee> list = esi.findallData();
    m.addAttribute("data",list);
    return "success";
}
@RequestMapping("/back")
    public String back()
{
    return "login";
}
}
