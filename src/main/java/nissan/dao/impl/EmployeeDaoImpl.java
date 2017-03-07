package nissan.dao.impl;



import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import nissan.dao.EmployeeDao;
import nissan.model.Employee;


@Repository
public class EmployeeDaoImpl implements EmployeeDao {

	@Autowired
	private SessionFactory sessionFactory;

	public void addEmployee(Employee employee) {
		Session session = sessionFactory.getCurrentSession();
		employee.getDepartment().setEmployee(employee);
		session.saveOrUpdate(employee);
		session.saveOrUpdate(employee.getDepartment());
		session.flush();
		

	}

	public List<Employee> getEmployeeList() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Employee");
		List<Employee> employeeList = query.list();
		session.flush();
		return employeeList;
	}

}
