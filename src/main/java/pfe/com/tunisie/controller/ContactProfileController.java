package pfe.com.tunisie.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pfe.com.tunisie.entities.User;
import pfe.com.tunisie.service.IActivityMetier;
import pfe.com.tunisie.service.IProjetMetier;
import pfe.com.tunisie.service.ISkillsMetier;
import pfe.com.tunisie.service.IUserMetier;

@Controller
public class ContactProfileController {

	@Autowired
	private IUserMetier IUserMetier;
	@Autowired
	private ISkillsMetier ISkillsMetier;
	@Autowired
	private IActivityMetier IActivityMetier;
	@Autowired
	private IProjetMetier IProjetMetier;

	@RequestMapping(value = "/contactProfile", method = RequestMethod.GET)
	public String profile(Model model, HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);

		Long idUser = IUserMetier.findByusername(username);
		model.addAttribute("user", IUserMetier.findOne(idUser));
		model.addAttribute("skills", ISkillsMetier.findByIdUser(idUser));
		model.addAttribute("skills", ISkillsMetier.findByIdUser(idUser));
		model.addAttribute("Activity", IActivityMetier.findByIdUser(idUser));
		model.addAttribute("Project", IProjetMetier.findByIdUser(idUser));
		model.addAttribute("usere", new User());
		return "contacts.contactProfile";
	}

}
