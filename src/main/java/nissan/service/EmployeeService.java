package nissan.service;

import java.util.List;

import nissan.model.Employee;

public interface EmployeeService {

	void addEmployee(Employee employee);

	List<Employee> getEmployeeList();

}
