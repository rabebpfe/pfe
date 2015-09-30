package pfe.com.tunisie.controller;

import java.util.Calendar;
import java.util.Date;

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

import pfe.com.tunisie.entities.Message;
import pfe.com.tunisie.model.MessageModel;
import pfe.com.tunisie.service.IMessageMetier;
import pfe.com.tunisie.service.INotificationMetier;
import pfe.com.tunisie.service.IUserMetier;

@Controller
public class MailboxController {
	@Autowired
	private IUserMetier IUserMetier;
	@Autowired
	private INotificationMetier INotificationMetier;
	@Autowired
	private IMessageMetier IMessageMetier;
	
	@RequestMapping("/reception")
	public String reception(Model model, HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);
		model.addAttribute("user", IUserMetier.findOne(idUser));
		model.addAttribute("notification",INotificationMetier.findByIdUser(idUser));
		model.addAttribute("message",IMessageMetier.findByIdUser(idUser));
		
		return "mailbox.reception";
	}
	@RequestMapping("/envoye")
	public String envoye(Model model, HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);
		model.addAttribute("user", IUserMetier.findOne(idUser));
		model.addAttribute("notification",INotificationMetier.findByIdUser(idUser));
		model.addAttribute("message",IMessageMetier.findByIdUser(idUser));
		model.addAttribute("message_envoye",IMessageMetier.findByCreate_By(idUser));
		return "mailbox.envoye";
	}

	@RequestMapping(value = "/compose")
	public String compose(@ModelAttribute("SpringWeb") MessageModel MessageModel
			,ModelMap model, HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);
		model.addAttribute("notification",INotificationMetier.findByIdUser(idUser));
		model.addAttribute("user", IUserMetier.findOne(idUser));
		model.addAttribute("msgs",new Message());
		model.addAttribute("message",IMessageMetier.findByIdUser(idUser));
		model.addAttribute("users", IUserMetier.findAll());
		
		return "mailbox.compose";
	}
	@RequestMapping(value = "/send", method = RequestMethod.POST)
	public String send(@ModelAttribute("SpringWeb") MessageModel MessageModel
			,ModelMap model, HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);
		model.addAttribute("notification",INotificationMetier.findByIdUser(idUser));
		model.addAttribute("user", IUserMetier.findOne(idUser));
		model.addAttribute("msgs",new Message());
		model.addAttribute("users", IUserMetier.findAll());
		Calendar calendar = Calendar.getInstance();
		Date date = calendar.getTime();
		IMessageMetier.send(MessageModel.getMessage(),MessageModel.getSujet(),MessageModel.getUser(),idUser,date);
		model.addAttribute("message",IMessageMetier.findByIdUser(idUser));
		return "redirect:/compose";
	}

	@RequestMapping("/readenvoye")
	public String read(Model model, HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);
		model.addAttribute("user", IUserMetier.findOne(idUser));
		model.addAttribute("notification",INotificationMetier.findByIdUser(idUser));
		model.addAttribute("message",IMessageMetier.findByIdUser(idUser));
		return "mailbox.readenvoye";
	}
	@RequestMapping("/readreception")
	public String readreception(Model model, HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);
		model.addAttribute("user", IUserMetier.findOne(idUser));
		model.addAttribute("notification",INotificationMetier.findByIdUser(idUser));
		model.addAttribute("message",IMessageMetier.findByIdUser(idUser));
		return "mailbox.readreception";
	}
}
