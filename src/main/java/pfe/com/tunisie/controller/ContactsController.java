package pfe.com.tunisie.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pfe.com.tunisie.service.IMessageMetier;
import pfe.com.tunisie.service.INotificationMetier;
import pfe.com.tunisie.service.IUserMetier;

@Controller
public class ContactsController {
	@Autowired
	private IUserMetier IUserMetier;
	@Autowired
	private INotificationMetier INotificationMetier;
	@Autowired
	private IMessageMetier IMessageMetier;

	@RequestMapping("/contacts")
	public String contacts(Model model, HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);
		model.addAttribute("user", IUserMetier.findOne(idUser));
		model.addAttribute("notification",
				INotificationMetier.findByIdUser(idUser));
		model.addAttribute("users", IUserMetier.findAll());
		model.addAttribute("message", IMessageMetier.findByIdUser(idUser));
		model.addAttribute("messageAll", IMessageMetier.findAllByIdUser(idUser));
		model.addAttribute("notificationAll",
				INotificationMetier.findAllByIdUser(idUser));
		return "contacts.contacts";
	}
}
