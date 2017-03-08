package nissan.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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
	private String partName;
	private String modelNumber;
	private String description;

//	@Min(value = 0, message = "The part quantity must not be less than zero.")
	private int quantity;
	private String department;
	
	@Transient
	private List<String> deptOptions;
	
	@Transient
	public List<String> getDeptOptions() {
		return deptOptions;
	}

	public Part() {
		deptOptions = new ArrayList<String>();
		deptOptions.add("Bodys");
		deptOptions.add("Paints");
		deptOptions.add("Exterior");
		deptOptions.add("Interior");
		deptOptions.add("Trim");
		
	}

	
	
	public String getPartName() {
		return partName;
	}

	public void setPartName(String partName) {
		this.partName = partName;
	}

	public int getPartId() {
		return partId;
	}

	public void setPartId(int partId) {
		this.partId = partId;
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

	@ManyToOne
	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

}
