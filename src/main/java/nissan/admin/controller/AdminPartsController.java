package nissan.admin.controller;

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

import nissan.model.Part;
import nissan.service.PartService;

@Controller
@RequestMapping("/admin")
public class AdminPartsController {
	
	@Autowired
	private PartService partService;

	@RequestMapping("/part")
	public String showParts(Model model) {
		List<Part> partsList = partService.getPartsList();
		model.addAttribute("partsList", partsList);
		System.out.println("PART LISTS: " +  partsList);
		return "adminPartsPage";
	}

	@RequestMapping(value = "/part/addPart", method = RequestMethod.GET)
	public String addPart(Model model) {
		Part part = new Part();
		model.addAttribute("part", part);
		return "addPart"; 
	}

	@RequestMapping(value = "/part/addPart", method = RequestMethod.POST)
	public String addPart(@ModelAttribute("part") Part part, BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "addPart";
		}
		

//        List<Part> partsList = partService.getPartsList();
//
//        for (int i=0; i< partsList.size(); i++) {
//            if(part.getModelNumber().equals(partsList.get(i).getModelNumber())) {
//                model.addAttribute("ModelMsg", "Model No already exists");
//
//                return "addEmployee";
//            }
//            
//            if(part.getPartName().equals(partsList.get(i).getPartName())) {
//            	model.addAttribute("NameMsg", "Name already exists");
//            	
//            	return "addEmployee";
//            }

            
//        }
		partService.addParts(part);
		return "redirect:/admin/part";
	}

	@RequestMapping(value = "/part/editPart/{partId}", method = RequestMethod.GET)
	public String editPart(@PathVariable("partId") int partId, Model model) {
		Part part = partService.getPartsById(partId);
		model.addAttribute("part", part);
		return "editPart";
	}

	@RequestMapping(value = "/part/editPart", method = RequestMethod.POST)
	public String editPart(@ModelAttribute Part part, BindingResult result) {
		partService.editParts(part);

		return "redirect:/part";
	}

	@GetMapping("/part/deletePart/{partId}")
	public String deletePart(@PathVariable("partId") int partId, Model model) {
		partService.deleteParts(partService.getPartsById(partId));
		return "redirect:/part";

	}

}
