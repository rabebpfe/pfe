package pfe.com.tunisie.controller.Projet;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import pfe.com.tunisie.service.IUserMetier;

@Controller
public class ProjetDetailController {
	@Autowired
	private IUserMetier IUserMetier;

	@RequestMapping("/projetDetail")
	public String projetDetail(Model model, HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);
		model.addAttribute("user", IUserMetier.findOne(idUser));
		return "projet.projetDetail";
	}
}