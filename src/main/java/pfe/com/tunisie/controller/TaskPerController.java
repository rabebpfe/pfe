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
import pfe.com.tunisie.service.ITaskMetier;
import pfe.com.tunisie.service.IUserMetier;

@Controller
public class TaskPerController {
	@Autowired
	private IUserMetier IUserMetier;
	@Autowired
	private INotificationMetier INotificationMetier;
	@Autowired
	private ITaskMetier ITaskMetier;
	@Autowired
	private IMessageMetier IMessageMetier;

	@RequestMapping("/taskPer")
	public String taskPer(Model model, HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);
		model.addAttribute("user", IUserMetier.findOne(idUser));
		model.addAttribute("notification",
				INotificationMetier.findByIdUser(idUser));
		model.addAttribute("Task_Open",
				ITaskMetier.findByStatus("Open", idUser));
		model.addAttribute("Task_IN_progress",
				ITaskMetier.findByStatus("IN progress", idUser));
		model.addAttribute("Task_Review",
				ITaskMetier.findByStatus("Review", idUser));
		model.addAttribute("Task_DONE",
				ITaskMetier.findByStatus("Done", idUser));
		model.addAttribute("message", IMessageMetier.findByIdUser(idUser));
		return "task.taskPer";
	}
}
