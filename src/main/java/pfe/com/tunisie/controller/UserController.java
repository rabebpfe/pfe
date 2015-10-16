package pfe.com.tunisie.controller;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import pfe.com.tunisie.entities.User;
import pfe.com.tunisie.model.UserModel;
import pfe.com.tunisie.service.*;

@Controller
public class UserController {
	@Autowired
	private IUserMetier IUserMetier;
	@Autowired
	private IMessageMetier IMessageMetier;

	@RequestMapping("/users")
	public String users(Model model, HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);
		model.addAttribute("user", IUserMetier.findOne(idUser));
		model.addAttribute("usere", new User());
		model.addAttribute("users", IUserMetier.findAll());
		model.addAttribute("message", IMessageMetier.findByIdUser(idUser));

		return "user.user";
	}

	@RequestMapping(value = "/suppUser", method = RequestMethod.GET)
	public String deleteUser(@ModelAttribute("SpringWeb") UserModel UserModel,
			ModelMap model, @RequestParam Long idUser)

	{
		IUserMetier.delete(idUser);
		model.addAttribute("user", new User());
		model.addAttribute("users", IUserMetier.findAll());
		return "redirect:/users";
	}

	@RequestMapping(value = "/saveUser", method = RequestMethod.POST)
	public String saveUser(@Valid User user, BindingResult BindingResult,
			@ModelAttribute("SpringWeb") UserModel userModel, ModelMap model,
			MultipartFile file, HttpServletRequest request) throws Exception {
		if (BindingResult.hasErrors()) {

		}
		byte[] photo = null;
		String nomphoto = null;
		if (!file.isEmpty()) {
			photo = file.getBytes();
			nomphoto = file.getOriginalFilename();
		}

		IUserMetier.saveUser(userModel.getRoles(), userModel.getUsername(),
				userModel.getPassword(), userModel.getEmail(),
				userModel.getAdresse(), nomphoto, photo,
				request.getParameterValues("skills"), userModel.getPhone());
		model.addAttribute("user", new User());
		model.addAttribute("users", IUserMetier.findAll());

		return "redirect:/users";
	}

	@RequestMapping(value = "/photoUser", produces = MediaType.IMAGE_JPEG_VALUE)
	@ResponseBody
	public byte[] getPhoto(Long idUser) throws IOException {
		User U = IUserMetier.findOne(idUser);
		if (U.getPhoto() == null)
			return new byte[0];
		else
			return IOUtils.toByteArray(new ByteArrayInputStream(U.getPhoto()));
	}

	@RequestMapping("/editUser")
	public String editeInformationUser(@RequestParam Long idUser,
			ModelMap model, HttpServletRequest request) {
		User user = IUserMetier.findOne(idUser);

		model.addAttribute("useredite", user);
		request.getSession().setAttribute("idUser", idUser);
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser1 = IUserMetier.findByusername(username);
		model.addAttribute("user", IUserMetier.findOne(idUser1));
		model.addAttribute("usere", new User());
		model.addAttribute("users", IUserMetier.findAll());
		model.addAttribute("useredit", IUserMetier.useredit(idUser));
		return "user.userEdit";
	}

	@RequestMapping(value = "/updateUser", method = RequestMethod.POST)
	public String updateInformationUser(
			@ModelAttribute("SpringWeb") UserModel userModel, ModelMap model,
			HttpServletRequest request, MultipartFile file) throws Exception {
		byte[] photo = null;
		String nomphoto = null;
		if (!file.isEmpty()) {
			photo = file.getBytes();
			nomphoto = file.getOriginalFilename();
		}
		long idUser = (Long) request.getSession().getAttribute("idUser");
		IUserMetier.update(idUser, userModel.getRoles(),
				userModel.getUsername(), userModel.getPassword(),
				userModel.getEmail(), userModel.getAdresse(), nomphoto, photo,
				request.getParameterValues("skills"), userModel.getPhone());
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser1 = IUserMetier.findByusername(username);
		model.addAttribute("user", IUserMetier.findOne(idUser1));
		model.addAttribute("usere", new User());
		model.addAttribute("users", IUserMetier.findAll());
		model.addAttribute("useredit", IUserMetier.useredit(idUser));
		model.addAttribute("message", IMessageMetier.findByIdUser(idUser));
		return "redirect:/users";

	}

}
