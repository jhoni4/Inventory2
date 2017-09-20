package nissan.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import nissan.model.Dept;
import nissan.model.Employee;
import nissan.service.EmployeeService;

@Controller
@RequestMapping("/")
public class HomeController {
	
	@Autowired
	private EmployeeService employeeService;
	
	@RequestMapping
	public String home(){
		return "home";
	}
	
	@RequestMapping("/login")
	public String login(){
		return "login";
	}
	
	@RequestMapping("/register")
	public String register(Model model){
		Employee employee = new Employee();
		Dept dept = new Dept();
		model.addAttribute("dept", dept);
		model.addAttribute("employee", employee);
		return "register";
	}
	
	@RequestMapping(path = "/register", method = RequestMethod.POST)
	public String addEmployee(@Valid @ModelAttribute("employee") Employee employee, BindingResult result,
            Model model) {
		System.out.println("result::" +result.hasErrors());
		if (result.hasErrors()) {
            return "register";
        }

        List<Employee> employeeList=employeeService.getEmployeeList();

        for (int i=0; i< employeeList.size(); i++) {
            if(employee.getEmployeeEmail().equals(employeeList.get(i).getEmployeeEmail())) {
                model.addAttribute("emailMsg", "Email already exists");

                return "register";
            }

            if(employee.getUsername().equals(employeeList.get(i).getUsername())) {
                model.addAttribute("usernameMsg", "Username already exists");

                return "register";
            }
        }

        employee.setEnabled(true);
		employeeService.addEmployee(employee);
		return "registerEmployeeSuccess";
	}

}

