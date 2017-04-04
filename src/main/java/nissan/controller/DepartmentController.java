package nissan.controller;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import nissan.model.Department;
import nissan.service.DepartmentService;

@Controller
@RequestMapping("/department")
public class DepartmentController {
	
	private Log m_log = LogFactory.getLog(DepartmentController.class);
	
	@Autowired
	private DepartmentService departmentService;
	
	@RequestMapping
	public String showDepartments(Model model){
		List<Department> departmentList = departmentService.getDepartmentList();
		model.addAttribute("departmentList", departmentList);
		m_log.info(departmentList);
		return "departmentPage";
	}

}
