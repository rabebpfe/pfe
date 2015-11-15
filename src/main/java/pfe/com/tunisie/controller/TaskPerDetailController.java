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
import pfe.com.tunisie.entities.Comment;
import pfe.com.tunisie.entities.Task;
import pfe.com.tunisie.model.TaskModel;
import pfe.com.tunisie.service.ICommenteMetier;
import pfe.com.tunisie.service.IFileTaskMetier;
import pfe.com.tunisie.service.IMessageMetier;
import pfe.com.tunisie.service.INotificationMetier;
import pfe.com.tunisie.service.ITaskMetier;
import pfe.com.tunisie.service.IUserMetier;

@Controller
public class TaskPerDetailController {
	@Autowired
	private IUserMetier IUserMetier;
	@Autowired
	private ITaskMetier ITaskMetier;
	@Autowired
	private IFileTaskMetier IFileTaskMetier;
	@Autowired
	private ICommenteMetier ICommenteMetier;
	@Autowired
	private INotificationMetier INotificationMetier;
	@Autowired
	private IMessageMetier IMessageMetier;

	@RequestMapping("/taskPerDetail")
	public String taskPerDetail(Model model, HttpServletRequest request,
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
		model.addAttribute("users", IUserMetier.findAll());
		model.addAttribute("Files", IFileTaskMetier.findFileByTask(idTask));
		model.addAttribute("Comments", ICommenteMetier.findByIdTask(idTask));
		model.addAttribute("notification",
				INotificationMetier.findByIdUser(idUser));
		model.addAttribute("Commente", new Comment());
		model.addAttribute("message", IMessageMetier.findByIdUser(idUser));
		String url = request.getRequestURI();
		System.out.println("**************End url ***************" + url);
		request.getSession().setAttribute("url", url);
		request.getSession().setAttribute("idTask", idTask);
		return "task.taskPerDetail";
	}
	
	
	@RequestMapping(value ="/attribut", method = RequestMethod.POST)
	public String attribut(@ModelAttribute("SpringWeb") TaskModel TaskModel,
			ModelMap model, HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);
		
		Long idTask=(Long) request.getSession().getAttribute("idTask");
		ITaskMetier.attribut(idTask,TaskModel.getUser());
		model.addAttribute("task", new Task());
		model.addAttribute("user", IUserMetier.findOne(idUser));
		model.addAttribute("notification",
				INotificationMetier.findByIdUser(idUser));
		model.addAttribute("Task_Open",
				ITaskMetier.findByStatus("Open", idUser));
		model.addAttribute("Task_IN_progress",
				ITaskMetier.findByStatus("IN progress", idUser));
		model.addAttribute("Task_Review",
				ITaskMetier.findByStatus("Code Review", idUser));
		model.addAttribute("Task_Done",
				ITaskMetier.findByStatus("Done", idUser));
		model.addAttribute("message", IMessageMetier.findByIdUser(idUser));
		return "redirect:/taskPer";
	}
	
	
	@RequestMapping(value ="/saveHours", method = RequestMethod.POST)
	public String saveHours(@ModelAttribute("SpringWeb") TaskModel TaskModel,
			ModelMap model, HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);
		
		Long idTask=(Long) request.getSession().getAttribute("idTask");
		ITaskMetier.saveHours(idTask,TaskModel.getHours());
		model.addAttribute("Task", new Task());
		model.addAttribute("user", IUserMetier.findOne(idUser));
		model.addAttribute("notification",
				INotificationMetier.findByIdUser(idUser));
		model.addAttribute("Task_Open",
				ITaskMetier.findByStatus("Open", idUser));
		model.addAttribute("Task_IN_progress",
				ITaskMetier.findByStatus("IN progress", idUser));
		model.addAttribute("Task_Review",
				ITaskMetier.findByStatus("Code Review", idUser));
		model.addAttribute("Task_Done",
				ITaskMetier.findByStatus("Done", idUser));
		model.addAttribute("message", IMessageMetier.findByIdUser(idUser));
		return "redirect:/taskPer";
	}
	
	
	@RequestMapping(value={"&_eventId=Star_Progress",  "&_eventId=Code_Review_Failed"})
	public String IN_progress(Model model, HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);
		Long idTask=(Long) request.getSession().getAttribute("idTask");
		ITaskMetier.IN_progress(idTask);
		model.addAttribute("user", IUserMetier.findOne(idUser));
		model.addAttribute("notification",
				INotificationMetier.findByIdUser(idUser));
		model.addAttribute("Task_Open",
				ITaskMetier.findByStatus("Open", idUser));
		model.addAttribute("Task_IN_progress",
				ITaskMetier.findByStatus("IN progress", idUser));
		model.addAttribute("Task_Review",
				ITaskMetier.findByStatus("Code Review", idUser));
		model.addAttribute("Task_Done",
				ITaskMetier.findByStatus("Done", idUser));
		model.addAttribute("message", IMessageMetier.findByIdUser(idUser));
		return "redirect:/taskPer";
	}
	
	@RequestMapping(value={"&_eventId=Stop_Progress",  "&_eventId=Reopen"})
	public String Open(Model model, HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);
		Long idTask=(Long) request.getSession().getAttribute("idTask");
		ITaskMetier.Open(idTask);
		model.addAttribute("user", IUserMetier.findOne(idUser));
		model.addAttribute("notification",
				INotificationMetier.findByIdUser(idUser));
		model.addAttribute("Task_Open",
				ITaskMetier.findByStatus("Open", idUser));
		model.addAttribute("Task_IN_progress",
				ITaskMetier.findByStatus("IN progress", idUser));
		model.addAttribute("Task_Review",
				ITaskMetier.findByStatus("Code Review", idUser));
		model.addAttribute("Task_Done",
				ITaskMetier.findByStatus("Done", idUser));
		model.addAttribute("message", IMessageMetier.findByIdUser(idUser));
		return "redirect:/taskPer";
	}
	@RequestMapping("&_eventId=Readly_for_review")
	public String Code_Review(Model model, HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);
		Long idTask=(Long) request.getSession().getAttribute("idTask");
        ITaskMetier.Code_Review(idTask);
		model.addAttribute("user", IUserMetier.findOne(idUser));
		model.addAttribute("notification",
				INotificationMetier.findByIdUser(idUser));
		model.addAttribute("Task_Open",
				ITaskMetier.findByStatus("Open", idUser));
		model.addAttribute("Task_IN_progress",
				ITaskMetier.findByStatus("IN progress", idUser));
		model.addAttribute("Task_Review",
				ITaskMetier.findByStatus("Code Review", idUser));
		model.addAttribute("Task_Done",
				ITaskMetier.findByStatus("Done", idUser));
		model.addAttribute("message", IMessageMetier.findByIdUser(idUser));
		return "redirect:/taskPer";
	}
	
	@RequestMapping("&_eventId=Code_Review_Passed")
	public String Done(Model model, HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);
		Long idTask=(Long) request.getSession().getAttribute("idTask");
		ITaskMetier.Done(idTask);
		model.addAttribute("user", IUserMetier.findOne(idUser));
		model.addAttribute("notification",
				INotificationMetier.findByIdUser(idUser));
		model.addAttribute("Task_Open",
				ITaskMetier.findByStatus("Open", idUser));
		model.addAttribute("Task_IN_progress",
				ITaskMetier.findByStatus("IN progress", idUser));
		model.addAttribute("Task_Review",
				ITaskMetier.findByStatus("Code Review", idUser));
		model.addAttribute("Task_Done",
				ITaskMetier.findByStatus("Done", idUser));
		model.addAttribute("message", IMessageMetier.findByIdUser(idUser));
		return "redirect:/taskPer";
	}
	
	
	
	
}
