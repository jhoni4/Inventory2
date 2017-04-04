package nissan.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import nissan.dao.EmployeeDao;
import nissan.model.Employee;
@Service
@Transactional
public class EmployeeServiceImpl implements nissan.service.EmployeeService {

	@Autowired
	private EmployeeDao employeeDao;
	
	public void addEmployee(Employee employee) {
		employeeDao.addEmployee(employee);

	}

	public List<Employee> getEmployeeList() {
		return employeeDao.getEmployeeList();
		
	}

	@Override
	public Employee getEmployeeById(int employeeId) {
		return employeeDao.getEmployeeById(employeeId);
	}

	@Override
	public void editEmployee(Employee employee) {
		employeeDao.editEmployee(employee);
		
	}

	@Override
	public void deleteEmployee(Employee employee) {
		employeeDao.deleteEmployee(employee);
		
	}

	public Employee getEmployeeByUsername(String username) {
		return employeeDao.getEmployeeByUsername(username);
		 
	}

}
