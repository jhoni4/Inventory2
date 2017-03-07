package nissan.model;

import java.io.Serializable;
import java.util.LinkedHashMap;

import javax.persistence.*;

@Entity
public class Employee implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 478525988806153335L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int employeeId;
	private String firstName;
	private String lastName;
	private int employeeNumber;

	@OneToOne
	@JoinColumn(name = "departmentId")
	private Department department;
	
	
	@Transient
	private LinkedHashMap<String, String> departmentOption;

	@Transient
	public LinkedHashMap<String, String> getDepartmentOption() {
		return departmentOption;
	}

	public Employee() {
		departmentOption = new LinkedHashMap<>();
		departmentOption.put("Bodys", "Bodys");
		departmentOption.put("Paints", "Paints");
		departmentOption.put("Exterior", "Exterior");
		departmentOption.put("Interior", "Interior");
		departmentOption.put("Trim", "Trim");
	}

	public Department getDepartment() {
		return department;
	}
	
	public void setDepartment(Department department) {
		this.department = department;
	}

	public int getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public int getEmployeeNumber() {
		return employeeNumber;
	}

	public void setEmployeeNumber(int employeeNumber) {
		this.employeeNumber = employeeNumber;
	}

}
