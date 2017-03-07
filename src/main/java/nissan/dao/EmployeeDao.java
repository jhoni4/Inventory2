package nissan.dao;

import java.util.List;

import nissan.model.Employee;

public interface EmployeeDao {

	void addEmployee(Employee employee);

	List<Employee> getEmployeeList();

}
