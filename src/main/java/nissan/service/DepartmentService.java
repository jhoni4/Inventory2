package nissan.service;

import java.util.List;

import nissan.model.Department;


public interface DepartmentService {

	List<Department> getDepartmentList();

	List<Department> getDepartmentNameList();

	void addDepartment(Department department);
	

}
