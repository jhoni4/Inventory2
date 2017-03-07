package nissan.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import nissan.dao.DepartmentDao;
import nissan.model.Department;
import nissan.service.DepartmentService;

@Service
@Transactional
public class DepartmentServiveImpl implements DepartmentService {
	
	@Autowired
	private DepartmentDao departmentDao;

	@Override
	public List<Department> getDepartmentList() {
		return departmentDao.getDepartmentList();
		
	}

	@Override
	public List<Department> getDepartmentNameList() {
		return departmentDao.getDepartmentNameList();
		
	}

	@Override
	public void addDepartment(Department department) {
		departmentDao.addDepartment(department);
		
	}

}
