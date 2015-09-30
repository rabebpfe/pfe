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

import pfe.com.tunisie.entities.Project;
import pfe.com.tunisie.model.ProjetModel;
import pfe.com.tunisie.model.UserModel;
import pfe.com.tunisie.service.IMessageMetier;
import pfe.com.tunisie.service.IProjetMetier;
import pfe.com.tunisie.service.IUserMetier;

@Controller
public class ProjetController {
	@Autowired
	private IProjetMetier IProjetMetier;
	@Autowired
	private IUserMetier IUserMetier;
	@Autowired
	private IMessageMetier IMessageMetier;

	@RequestMapping("/projet")
	public String projet(Model model, HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);
		model.addAttribute("user", IUserMetier.findOne(idUser));
		model.addAttribute("projet", new Project());
		model.addAttribute("projets", IProjetMetier.findAll());
		model.addAttribute("message",IMessageMetier.findByIdUser(idUser));
		return "projet.projet";

	}

	@RequestMapping(value = "/suppProjet", method = RequestMethod.GET)
	public String deleteProject(
			@ModelAttribute("SpringWeb") UserModel UserModel, ModelMap model,
			@RequestParam Long idProject, HttpServletRequest request)

	{
		IProjetMetier.delete(idProject);
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);
		model.addAttribute("user", IUserMetier.findOne(idUser));

		model.addAttribute("projet", new Project());
		model.addAttribute("projets", IProjetMetier.findAll());

		return "redirect:/projet";
	}

	@RequestMapping(value = "/saveProjet", method = RequestMethod.POST)
	public String saveProject(
			@ModelAttribute("SpringWeb") ProjetModel ProjetModel,
			ModelMap model, HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);

		IProjetMetier.saveProjet(ProjetModel.getDescription(),
				ProjetModel.getNom(), ProjetModel.getCategorie(),
				ProjetModel.getDate(), ProjetModel.getStatus(),
				ProjetModel.getEstimation_dure(),
				ProjetModel.getEstimation_budget(), idUser);

		model.addAttribute("projet", new Project());
		model.addAttribute("projets", IProjetMetier.findAll());

		return "redirect:/projet";
	}

	@RequestMapping("/editProject")
	public String editeInformationProject(@RequestParam Long idProject,
			ModelMap model, HttpServletRequest request) {

		Project Project = IProjetMetier.findOne(idProject);

		model.addAttribute("Projectedite", Project);
		request.getSession().setAttribute("idProject", idProject);
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);
		model.addAttribute("user", IUserMetier.findOne(idUser));

		model.addAttribute("projet", new Project());
		model.addAttribute("projets", IProjetMetier.findAll());

		return "projet.projetEdit";
	}

	@RequestMapping(value = "/updateditProject", method = RequestMethod.POST)
	public String updateInformationProject(
			@ModelAttribute("SpringWeb") ProjetModel ProjetModel,
			ModelMap model, HttpServletRequest request) {

		long idProject = (Long) request.getSession().getAttribute("idProject");
		IProjetMetier.update(idProject, ProjetModel.getNom(),
				request.getParameter("Project_Description"),
				ProjetModel.getCategorie(), ProjetModel.getEstimation_budget(),
				ProjetModel.getEstimation_dure(), ProjetModel.getStatus(),
				ProjetModel.getDate());
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);
		model.addAttribute("user", IUserMetier.findOne(idUser));
		model.addAttribute("projet", new Project());
		model.addAttribute("projets", IProjetMetier.findAll());
		model.addAttribute("message",IMessageMetier.findByIdUser(idUser));
		return "redirect:/projet";

	}

}
