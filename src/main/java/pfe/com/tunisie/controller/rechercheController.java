package pfe.com.tunisie.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class rechercheController {
	@RequestMapping("/error")
	public String error() {

		return "page_404";
	}

}
