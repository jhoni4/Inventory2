package nissan.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import nissan.model.Department;
import nissan.model.Part;
import nissan.service.DepartmentService;
import nissan.service.PartService;

@Controller
@RequestMapping("/part")
public class partsController {

	@Autowired
	private PartService partService;
	@Autowired
	private DepartmentService departmentService;

	@RequestMapping
	public String showParts(Model model) {
		List<Part> partsList = partService.getPartsList();
		model.addAttribute("partsList", partsList);
		System.out.println("PART LISTS: " +  partsList);
		return "parts";
	}

	@RequestMapping(value = "/addPart", method = RequestMethod.GET)
	public String addPart(Model model) {
		Part part = new Part();
		Department department = new Department(); 
		part.setDepartment(department);
		model.addAttribute("part", part);
		return "addPart"; 
	}

	@RequestMapping(value = "/addPart", method = RequestMethod.POST)
	public String addPart(@ModelAttribute("part") Part part, BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "addPart";
		}
		partService.addParts(part);
		return "redirect:/part";
	}

	@RequestMapping(value = "/viewPart/{partId}", method = RequestMethod.GET)
	public String viewPart(@PathVariable int partId, Model model) {
		Part part = partService.getPartsById(partId);
		model.addAttribute("part", part);
		return "viewPart";
	}

	@RequestMapping(value = "/editPart/{partId}", method = RequestMethod.GET)
	public String editPart(@PathVariable("partId") int partId, Model model) {
		Part part = partService.getPartsById(partId);
		model.addAttribute("part", part);
		return "editPart";
	}

	@RequestMapping(value = "/editPart", method = RequestMethod.POST)
	public String editPart(@ModelAttribute Part part, BindingResult result) {
		partService.editParts(part);

		return "redirect:/part";
	}

	@GetMapping("/deletePart/{partId}")
	public String deletePart(@PathVariable("partId") int partId, Model model) {
		partService.deleteParts(partService.getPartsById(partId));
		return "redirect:/part";

	}

}
