package nissan.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import nissan.model.Employee;
import nissan.service.EmployeeService;

@Controller
@RequestMapping("/admin")
public class AdminEmployeeController {
	
	@Autowired
	private EmployeeService employeeService;
	
	@RequestMapping("/employee")
	public String showEmployees(Model model) {
		List<Employee> employeeList = employeeService.getEmployeeList();
		model.addAttribute("employeeList", employeeList);
		return "adminEmployeePage";
	}

	@RequestMapping(value = "/employee/addEmployee", method = RequestMethod.GET)
	public String addEmployee(Model model) {
		Employee employee = new Employee();
		model.addAttribute("employee", employee);
		return "addEmployee";
	}

	@RequestMapping(path = "/employee/addEmployee", method = RequestMethod.POST)
	public String addEmployee(@ModelAttribute("employee") Employee employee, BindingResult result,
            Model model) {
		
		if (result.hasErrors()) {
            return "addEmployee";
        }

        List<Employee> employeeList=employeeService.getEmployeeList();

        for (int i=0; i< employeeList.size(); i++) {
            if(employee.getEmployeeEmail().equals(employeeList.get(i).getEmployeeEmail())) {
                model.addAttribute("emailMsg", "Email already exists");

                return "addEmployee";
            }

            if(employee.getUsername().equals(employeeList.get(i).getUsername())) {
                model.addAttribute("usernameMsg", "Username already exists");

                return "addEmployee";
            }
        }

        employee.setEnabled(true);
		employeeService.addEmployee(employee);
		return "redirect:/admin/employee";
	}
}
