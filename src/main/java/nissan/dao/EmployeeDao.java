package nissan.dao;

import java.util.List;

import nissan.model.Employee;

public interface EmployeeDao {

	void addEmployee(Employee employee);

	List<Employee> getEmployeeList();

	Employee getEmployeeById(int employeeId);

	void editEmployee(Employee employee);

	void deleteEmployee(Employee employee);

	Employee getEmployeeByUsername(String username);

}
