package pfe.com.tunisie.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pfe.com.tunisie.entities.Commente;
import pfe.com.tunisie.entities.Task;
import pfe.com.tunisie.service.ICommenteMetier;
import pfe.com.tunisie.service.IFileTaskMetier;
import pfe.com.tunisie.service.ITaskMetier;
import pfe.com.tunisie.service.IUserMetier;

@Controller
public class TaskDetailController {
	@Autowired
	private IUserMetier IUserMetier;
	@Autowired
	private ITaskMetier ITaskMetier;
	@Autowired
	private IFileTaskMetier IFileTaskMetier;
	@Autowired
	private ICommenteMetier ICommenteMetier;

	@RequestMapping("/taskDetail")
	public String taskDetail(Model model, HttpServletRequest request,
			@RequestParam Long idTask) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);
		model.addAttribute("user", IUserMetier.findOne(idUser));
		Task Task = ITaskMetier.findOne(idTask);
		request.getSession().setAttribute("idTask", idTask);
		model.addAttribute("Task", Task);
		model.addAttribute("Files", IFileTaskMetier.findFileByTask(idTask));
		model.addAttribute("Comments", ICommenteMetier.findByIdTask(idTask));
		model.addAttribute("Commente", new Commente());
		return "task.taskDetail";
	}

}
