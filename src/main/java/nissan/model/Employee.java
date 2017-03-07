package nissan.model;

import java.io.Serializable;
import java.util.LinkedHashMap;

import javax.persistence.*;

import org.hibernate.validator.constraints.NotEmpty;

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

//	@NotEmpty(message = "The employee email must not be null.")
	private String employeeEmail;
	private String employeePhone;

//	@NotEmpty(message = "The customer username must not be null.")
	private String username;

//	@NotEmpty(message = "The customer password must not be null.")
	private String password;

	private boolean enabled;
	
	public String getEmployeeEmail() {
		return employeeEmail;
	}

	public void setEmployeeEmail(String employeeEmail) {
		this.employeeEmail = employeeEmail;
	}

	public String getEmployeePhone() {
		return employeePhone;
	}

	public void setEmployeePhone(String employeePhone) {
		this.employeePhone = employeePhone;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

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
