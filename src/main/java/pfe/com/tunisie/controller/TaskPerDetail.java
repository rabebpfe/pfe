package pfe.com.tunisie.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import pfe.com.tunisie.service.ICommenteMetier;
import pfe.com.tunisie.service.IFileTaskMetier;
import pfe.com.tunisie.service.IMessageMetier;
import pfe.com.tunisie.service.INotificationMetier;
import pfe.com.tunisie.service.ITaskMetier;
import pfe.com.tunisie.service.IUserMetier;




@Controller
public class TaskPerDetail {


			@Autowired(required=false)
			private IUserMetier IUserMetier;
			@Autowired(required=false)
			private ITaskMetier ITaskMetier;
			@Autowired(required=false)
			private IFileTaskMetier IFileTaskMetier;
			@Autowired(required=false)
			private ICommenteMetier ICommenteMetier;
			@Autowired(required=false)
			private INotificationMetier INotificationMetier;
			@Autowired(required=false)
			private IMessageMetier IMessageMetier;


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

	

