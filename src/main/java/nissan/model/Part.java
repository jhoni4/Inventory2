package nissan.model;

import java.io.Serializable;
import java.util.LinkedHashMap;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

@Entity
public class Part implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2037593511110492040L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int partId;

//	@NotEmpty(message = "The part name must not be null.")
	private String name;
	private String modelNumber;
	private String description;

//	@Min(value = 0, message = "The part quantity must not be less than zero.")
	private int quantity;
	
	@ManyToOne
	private Department department;
	
	@Transient
	private LinkedHashMap<String, String> departmentOption;

	@Transient
	public LinkedHashMap<String, String> getDepartmentOption() {
		return departmentOption;
	}

	public Part() {
		departmentOption = new LinkedHashMap<>();
		departmentOption.put("Bodys", "Bodys");
		departmentOption.put("Paints", "Paints");
		departmentOption.put("Exterior", "Exterior");
		departmentOption.put("Interior", "Interior");
		departmentOption.put("Trim", "Trim");
	}

	public int getPartId() {
		return partId;
	}

	public void setPartId(int partId) {
		this.partId = partId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getModelNumber() {
		return modelNumber;
	}

	public void setModelNumber(String modelNumber) {
		this.modelNumber = modelNumber;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}


	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

}
