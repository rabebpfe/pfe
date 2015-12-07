package pfe.com.tunisie.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import pfe.com.tunisie.model.NotificationModel;
import pfe.com.tunisie.service.IMessageMetier;
import pfe.com.tunisie.service.INotificationMetier;
import pfe.com.tunisie.service.IUserMetier;

@Controller
public class NotificationController {
	@Autowired
	private IUserMetier IUserMetier;
	@Autowired
	private INotificationMetier INotificationMetier;
	@Autowired
	private IMessageMetier IMessageMetier;

	@RequestMapping("/notification")
	public String notification(Model model, HttpServletRequest request) {

		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);
		model.addAttribute("user", IUserMetier.findOne(idUser));
		model.addAttribute("notification",
				INotificationMetier.findByIdUser(idUser));
		model.addAttribute("message", IMessageMetier.findByIdUser(idUser));
		model.addAttribute("messageAll", IMessageMetier.findAllByIdUser(idUser));
		model.addAttribute("notificationAll",
				INotificationMetier.findAllByIdUser(idUser));
		model.addAttribute("notificationRead",
				INotificationMetier.findReadByIdUser(idUser));
		return "notification.notification";
	}

	@RequestMapping("/readnotification")
	public String readreception(@RequestParam Long idNotification,
			ModelMap model, HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);

		model.addAttribute("user", IUserMetier.findOne(idUser));
		model.addAttribute("notification",
				INotificationMetier.findByIdUser(idUser));
		model.addAttribute("message", IMessageMetier.findByIdUser(idUser));
		model.addAttribute("messageAll", IMessageMetier.findAllByIdUser(idUser));
		model.addAttribute("notificationAll",
				INotificationMetier.findAllByIdUser(idUser));
		model.addAttribute("notif", INotificationMetier.findOne(idNotification));
		return "notification.readnotification";
	}

	@RequestMapping(value = "/supprNotification", method = RequestMethod.GET)
	public String deleteMessage(
			@ModelAttribute("SpringWeb") NotificationModel NotificationModel,
			ModelMap model, @RequestParam Long idNotification,
			HttpServletRequest request)

	{
		INotificationMetier.delete(idNotification);

		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);
		model.addAttribute("user", IUserMetier.findOne(idUser));
		model.addAttribute("notification",
				INotificationMetier.findByIdUser(idUser));
		model.addAttribute("message", IMessageMetier.findByIdUser(idUser));

		model.addAttribute("notificationAll",
				INotificationMetier.findAllByIdUser(idUser));
		model.addAttribute("messageAll", IMessageMetier.findAllByIdUser(idUser));
		model.addAttribute("notificationRead",
				INotificationMetier.findReadByIdUser(idUser));

		return "redirect:/notification";

	}

}
