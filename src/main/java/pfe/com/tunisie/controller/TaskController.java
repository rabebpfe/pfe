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
import pfe.com.tunisie.entities.Task;
import pfe.com.tunisie.model.TaskModel;
import pfe.com.tunisie.model.UserModel;
import pfe.com.tunisie.service.IProjetMetier;
import pfe.com.tunisie.service.ITaskMetier;
import pfe.com.tunisie.service.IUserMetier;

@Controller
public class TaskController {
	@Autowired
	private IUserMetier IUserMetier;
	@Autowired
	private ITaskMetier ITaskMetier;
	@Autowired
	private IProjetMetier IProjetMetier;

	@RequestMapping("/task")
	public String task(Model model, HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);
		model.addAttribute("user", IUserMetier.findOne(idUser));

		model.addAttribute("task", new Task());
		model.addAttribute("tasks", ITaskMetier.findAll());
		model.addAttribute("projets", IProjetMetier.findAll());
		model.addAttribute("users", IUserMetier.findAll());

		return "task.task";
	}

	@RequestMapping(value = "/saveTask", method = RequestMethod.POST)
	public String saveTask(@ModelAttribute("SpringWeb") TaskModel TaskModel,
			ModelMap model, HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);

		ITaskMetier.saveTask(TaskModel.getNom(), TaskModel.getDate(),
				TaskModel.getPriorite(), TaskModel.getDescription(),
				TaskModel.getProjet(), TaskModel.getUser(), idUser);
		model.addAttribute("user", IUserMetier.findOne(idUser));
		model.addAttribute("task", new Task());
		model.addAttribute("tasks", ITaskMetier.findAll());
		model.addAttribute("projets", IProjetMetier.findAll());
		model.addAttribute("users", IUserMetier.findAll());

		return "redirect:/task";
	}

	@RequestMapping(value = "/suppTask", method = RequestMethod.GET)
	public String deleteTask(@ModelAttribute("SpringWeb") UserModel UserModel,
			ModelMap model, @RequestParam Long idTask,
			HttpServletRequest request)

	{
		ITaskMetier.delete(idTask);
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);
		model.addAttribute("user", IUserMetier.findOne(idUser));
		model.addAttribute("task", new Task());
		model.addAttribute("tasks", ITaskMetier.findAll());
		model.addAttribute("projets", IProjetMetier.findAll());
		model.addAttribute("users", IUserMetier.findAll());

		return "redirect:/task";
	}

	@RequestMapping("/editTask")
	public String editeInformationTask(@RequestParam Long idTask,
			ModelMap model, HttpServletRequest request) {

		Task Task = ITaskMetier.findOne(idTask);
		model.addAttribute("Taskedit", Task);
		request.getSession().setAttribute("idTask", idTask);
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);
		model.addAttribute("user", IUserMetier.findOne(idUser));
		model.addAttribute("task", new Task());
		model.addAttribute("tasks", ITaskMetier.findAll());
		model.addAttribute("projets", IProjetMetier.findAll());
		model.addAttribute("users", IUserMetier.findAll());

		return "task.taskEdit";
	}

	@RequestMapping(value = "/updatTask", method = RequestMethod.POST)
	public String updateInformationProject(
			@ModelAttribute("SpringWeb") TaskModel TaskModel, ModelMap model,
			HttpServletRequest request) {

		long idTask = (Long) request.getSession().getAttribute("idTask");
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();

		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);
		model.addAttribute("user", IUserMetier.findOne(idUser));
		ITaskMetier.update(idTask, TaskModel.getNom(), TaskModel.getDate(),
				TaskModel.getPriorite(), TaskModel.getDescription(),
				TaskModel.getProjet(), TaskModel.getUser(), idUser);

		model.addAttribute("task", new Task());
		model.addAttribute("tasks", ITaskMetier.findAll());
		model.addAttribute("projets", IProjetMetier.findAll());
		model.addAttribute("users", IUserMetier.findAll());

		return "redirect:/task";

	}

}
