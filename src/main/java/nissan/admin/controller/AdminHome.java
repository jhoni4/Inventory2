package nissan.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminHome {

	@RequestMapping
	public String admin() {
		return "adminPage";
	}

}
