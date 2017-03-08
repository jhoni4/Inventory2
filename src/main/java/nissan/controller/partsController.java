package nissan.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import nissan.model.Part;
import nissan.service.PartService;

@Controller
public class partsController {

	@Autowired
	private PartService partService;
	

	@RequestMapping("/part")
	public String showParts(Model model) {
		List<Part> partsList = partService.getPartsList();
		model.addAttribute("partsList", partsList);
		System.out.println("PART LISTS: " +  partsList);
		return "parts";
	}

	@RequestMapping(value = "/part/viewPart/{partId}", method = RequestMethod.GET)
	public String viewPart(@PathVariable int partId, Model model) {
		Part part = partService.getPartsById(partId);
		model.addAttribute("part", part);
		return "viewPart";
	}

}
