package nissan.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	
	@RequestMapping(value = "/employee/viewEmployee/{employeeId}", method = RequestMethod.GET)
	public String addEmployee(@PathVariable("employeeId") int employeeId,  Model model) {
		Employee employee = employeeService.getEmployeeById(employeeId);
		model.addAttribute("employee", employee);
		return "viewEmployee";
	}

}
