package nissan.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Transient;

public class Dept {
	@Transient
	private List<String> deptOptions;

	public Dept() {
		deptOptions = new ArrayList<>();
		deptOptions.add("Bodys");
		deptOptions.add("Paints");
		deptOptions.add("Exterior");
		deptOptions.add("Interior");
		deptOptions.add("Trim");
		deptOptions.add("Admin");
	}

	@Transient
	public List<String> getDeptOptions() {
		return deptOptions;
	}

}
