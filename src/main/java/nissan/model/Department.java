package nissan.model;

import java.io.Serializable;

import javax.persistence.*;

@Entity
public class Department implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8973977076739459786L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int departmentId;
	private String name;
	
	
	@OneToOne
	@JoinColumn(name = "employeeId")
	private Employee employee;
	
	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	
	public Department() {
	}

	public Department(int departmentId, String name) {
		this.departmentId = departmentId;
		this.name = name;
	}

	public int getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(int departmentId) {
		this.departmentId = departmentId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String toString() {
		return "Department [departmentId=" + departmentId + ", name=" + name + ", employee="
				+ employee + "]";
	}


}
