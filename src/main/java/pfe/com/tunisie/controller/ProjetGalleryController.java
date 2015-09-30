package pfe.com.tunisie.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import pfe.com.tunisie.service.IMessageMetier;
import pfe.com.tunisie.service.IUserMetier;
import pfe.com.tunisie.service.IProjetMetier;

@Controller
public class ProjetGalleryController {
	@Autowired
	private IUserMetier IUserMetier;
	@Autowired
	private IProjetMetier IProjetMetier;
	@Autowired
	private IMessageMetier IMessageMetier;

	@RequestMapping("/projetGallery")
	public String projetGallery(Model model, HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);
		model.addAttribute("projects", IProjetMetier.findAll());
		model.addAttribute("user", IUserMetier.findOne(idUser));
		model.addAttribute("message",IMessageMetier.findByIdUser(idUser));
		return "projet.projetGallery";
	}
}
