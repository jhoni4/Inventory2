package nissan.dao;

import java.util.List;

import nissan.model.Department;

public interface DepartmentDao {

	List<Department> getDepartmentList();

	List<Department> getDepartmentNameList();

	void addDepartment(Department department);

}
