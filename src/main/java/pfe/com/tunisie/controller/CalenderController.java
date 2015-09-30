package pfe.com.tunisie.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pfe.com.tunisie.entities.Event;
import pfe.com.tunisie.model.EventModel;
import pfe.com.tunisie.service.IMessageMetier;
import pfe.com.tunisie.service.INotificationMetier;
import pfe.com.tunisie.service.IUserMetier;
import pfe.com.tunisie.service.IEventMetier;

@Controller
public class CalenderController {
	@Autowired
	private IUserMetier IUserMetier;
	@Autowired
	private IEventMetier IEventMetier;
	@Autowired
	private INotificationMetier INotificationMetier;
	@Autowired
	private IMessageMetier IMessageMetier;

	@RequestMapping("/calender")
	public String calender(Model model, HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);
		model.addAttribute("user", IUserMetier.findOne(idUser));
		model.addAttribute("notification",INotificationMetier.findByIdUser(idUser));
		model.addAttribute("message",IMessageMetier.findByIdUser(idUser));
		model.addAttribute("events", IEventMetier.findAll());
		model.addAttribute("event", new Event());
		return "calender.calender";
	}

	@RequestMapping(value = "/saveEvent", method = RequestMethod.POST)
	public String saveEvent(Model model, HttpServletRequest request,
			@ModelAttribute("SpringWeb") EventModel EventModel) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);
		model.addAttribute("user", IUserMetier.findOne(idUser));
		model.addAttribute("events", IEventMetier.findAll());
		model.addAttribute("event", new Event());
		IEventMetier.saveEvent(EventModel.getTitle(),
				EventModel.getDescription(), EventModel.getD(),
				EventModel.getM(), EventModel.getY(), idUser);

		return "calender.calender";

	}

	@RequestMapping(value = "/editEvent", method = RequestMethod.POST)
	public String editCommentProjet(
			@ModelAttribute("SpringWeb") EventModel EventModel, Model model,
			HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);
		model.addAttribute("user", IUserMetier.findOne(idUser));

		model.addAttribute("events", IEventMetier.findAll());
		model.addAttribute("event", new Event());
		IEventMetier.editEvent((long) 1, EventModel.getTitle(),
				EventModel.getDescription(), idUser);

		return "redirect:/calender";

	}

}
