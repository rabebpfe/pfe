package pfe.com.tunisie.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pfe.com.tunisie.entities.User;
import pfe.com.tunisie.service.IActivityMetier;
import pfe.com.tunisie.service.IMessageMetier;
import pfe.com.tunisie.service.INotificationMetier;
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
	@Autowired
	private INotificationMetier INotificationMetier;
	@Autowired
	private IMessageMetier IMessageMetier;

	@RequestMapping(value = "/contactProfile")
	public String profile(Model model, HttpServletRequest request,
			@RequestParam Long idUser) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUserNotif = IUserMetier.findByusername(username);
		model.addAttribute("user", IUserMetier.findOne(idUser));
		model.addAttribute("skills", ISkillsMetier.findByIdUser(idUser));
		model.addAttribute("skills", ISkillsMetier.findByIdUser(idUser));
		model.addAttribute("Project", IProjetMetier.findByContribution());
		model.addAttribute("notification",
				INotificationMetier.findByIdUser(idUserNotif));
		model.addAttribute("usere", new User());
		model.addAttribute("Activity", IActivityMetier.findByIdUser(idUser));
		model.addAttribute("message", IMessageMetier.findByIdUser(idUser));
		return "contacts.contactProfile";
	}

}
