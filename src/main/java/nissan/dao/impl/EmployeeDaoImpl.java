package nissan.dao.impl;



import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import nissan.dao.EmployeeDao;
import nissan.model.Authorities;
import nissan.model.Employee;
import nissan.model.Users;


@Repository
public class EmployeeDaoImpl implements EmployeeDao {

	@Autowired
	private SessionFactory sessionFactory;

	public void addEmployee(Employee employee) {
		Session session = sessionFactory.getCurrentSession();
		employee.getDepartment().setEmployee(employee);
		session.saveOrUpdate(employee);
		session.saveOrUpdate(employee.getDepartment());
		
		Users newUser = new Users();
		newUser.setUsername(employee.getUsername());
		newUser.setPassword(employee.getPassword());
		newUser.setEnabled(true);
		newUser.setEmployeeId(employee.getEmployeeId());

		Authorities newAuthority = new Authorities();
		newAuthority.setUsername(employee.getUsername());
		newAuthority.setAuthority("ROLE_USER");
		session.saveOrUpdate(newUser);
		session.saveOrUpdate(newAuthority);
		
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
