package pfe.com.tunisie.controller.User;

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
import org.springframework.web.multipart.MultipartFile;
import pfe.com.tunisie.entities.User;
import pfe.com.tunisie.model.UserModel;
import pfe.com.tunisie.service.IActivityMetier;
import pfe.com.tunisie.service.IProjetMetier;
import pfe.com.tunisie.service.ISkillsMetier;
import pfe.com.tunisie.service.IUserMetier;

@Controller
public class ProfileController {
	@Autowired
	private IUserMetier IUserMetier;
	@Autowired
	private ISkillsMetier ISkillsMetier;
	@Autowired
	private IActivityMetier IActivityMetier;
	@Autowired
	private IProjetMetier IProjetMetier;

	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String profile(Model model, HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);
		model.addAttribute("user", IUserMetier.findOne(idUser));
		model.addAttribute("skills", ISkillsMetier.findByIdUser(idUser));
		model.addAttribute("skills", ISkillsMetier.findByIdUser(idUser));
		model.addAttribute("Activity", IActivityMetier.findByIdUser(idUser));
		model.addAttribute("Project", IProjetMetier.findByIdUser(idUser));
		model.addAttribute("usere", new User());
		return "user.profile";
	}

	@RequestMapping(value = "/EditPhoto", method = RequestMethod.POST)
	public String EditPhoto(@ModelAttribute("SpringWeb") UserModel UserModel,
			ModelMap model, @RequestParam Long idUser, MultipartFile file)
			throws Exception

	{
		byte[] photo = null;
		String nomphoto = null;

		if (!file.isEmpty()) {
			photo = file.getBytes();
			nomphoto = file.getOriginalFilename();
		}
		IUserMetier.update(idUser, nomphoto, photo);
		model.addAttribute("user", IUserMetier.findOne(idUser));
		model.addAttribute("skills", ISkillsMetier.findByIdUser(idUser));
		model.addAttribute("skills", ISkillsMetier.findByIdUser(idUser));
		model.addAttribute("Activity", IActivityMetier.findByIdUser(idUser));
		model.addAttribute("Project", IProjetMetier.findByIdUser(idUser));
		model.addAttribute("usere", new User());
		return "redirect:/profile";
	}

	@RequestMapping(value = "/editProfile", method = RequestMethod.GET)
	public String editeUser(@ModelAttribute("SpringWeb") UserModel UserModel,
			ModelMap model, @RequestParam Long idUser,
			HttpServletRequest request) {

		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser1 = IUserMetier.findByusername(username);
		model.addAttribute("user", IUserMetier.findOne(idUser1));
		model.addAttribute("skills", ISkillsMetier.findByIdUser(idUser1));
		model.addAttribute("skills", ISkillsMetier.findByIdUser(idUser1));
		model.addAttribute("Activity", IActivityMetier.findByIdUser(idUser1));
		model.addAttribute("Project", IProjetMetier.findByIdUser(idUser1));
		model.addAttribute("usere", new User());
		return "user.profile";
	}

	@RequestMapping(value = "/editProfile", method = RequestMethod.POST)
	public String editeInformationUser(
			@ModelAttribute("SpringWeb") UserModel UserModel, ModelMap model,
			@RequestParam Long idUser) {

		IUserMetier.update(idUser, UserModel.getUsername(),
				UserModel.getPassword(), UserModel.getEmail());

		return "redirect:/login";

	}

}
