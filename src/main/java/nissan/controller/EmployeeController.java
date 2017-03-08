package nissan.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import nissan.model.Employee;
import nissan.service.EmployeeService;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeService employeeService;

	@RequestMapping("/employee")
	public String showEmployees(Model model) {
		List<Employee> employeeList = employeeService.getEmployeeList();
		model.addAttribute("employeeList", employeeList);
		return "employeePage";
	}

}
