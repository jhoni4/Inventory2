package nissan.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import nissan.dao.DepartmentDao;
import nissan.model.Department;

@Repository
public class DepartmentDaoImpl implements DepartmentDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	public List<Department> getDepartmentList() {
		Session session = sessionFactory.getCurrentSession();
		Query query = (Query) session.createQuery("from Department order by name");
		List<Department> departmentList = query.list();
		session.flush();
		return departmentList;
	}

	@Override
	public List<Department> getDepartmentNameList() {
		Session session = sessionFactory.getCurrentSession();
		Query query = (Query) session.createQuery("select dep.name from Department dep");
		List<Department> departmentNameList = query.list();
		session.flush();
		return departmentNameList;
		
	}

	@Override
	public void addDepartment(Department department) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(department);
		session.flush();
		
	}

}
