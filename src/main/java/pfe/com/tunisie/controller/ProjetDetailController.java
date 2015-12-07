package pfe.com.tunisie.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pfe.com.tunisie.entities.Project;
import pfe.com.tunisie.service.IActivityProjectMetier;
import pfe.com.tunisie.service.IFileProjetMetier;
import pfe.com.tunisie.service.IMessageMetier;
import pfe.com.tunisie.service.IProjetMetier;
import pfe.com.tunisie.service.IUserMetier;

@Controller
public class ProjetDetailController {
	@Autowired
	private IUserMetier IUserMetier;
	@Autowired
	private IProjetMetier IProjetMetier;
	@Autowired
	private IFileProjetMetier IFileProjetMetier;
	@Autowired
	private IActivityProjectMetier IActivityProjectMetier;
	@Autowired
	private IMessageMetier IMessageMetier;

	@RequestMapping("/projetDetail")
	public String projetDetail(Model model, HttpServletRequest request,
			@RequestParam Long idProject) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		Project Project = IProjetMetier.findOne(idProject);
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);
		model.addAttribute("user", IUserMetier.findOne(idUser));
		request.getSession().setAttribute("idProject", idProject);
		model.addAttribute("Project", Project);
		model.addAttribute("Files",
				IFileProjetMetier.findFileByProjects(idProject));
		model.addAttribute("Activity",
				IActivityProjectMetier.findByIdProject(idProject));
		model.addAttribute("message", IMessageMetier.findByIdUser(idUser));
		model.addAttribute("messageAll", IMessageMetier.findAllByIdUser(idUser));
		
		return "projet.projetDetail";
	}
}
