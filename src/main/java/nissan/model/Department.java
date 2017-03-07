package nissan.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

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
	
	@OneToMany(mappedBy = "department", cascade = CascadeType.ALL)
	private List<Part> parts;
	
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

	
	public List<Part> getParts() {
		return parts;
	}

	public void setParts(List<Part> parts) {
		this.parts = parts;
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
