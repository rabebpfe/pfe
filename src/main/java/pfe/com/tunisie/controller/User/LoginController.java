package pfe.com.tunisie.controller.User;

import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pfe.com.tunisie.entities.User;
import pfe.com.tunisie.model.UserModel;
import pfe.com.tunisie.service.IUserMetier;

@Controller
public class LoginController {
	@Autowired
	private IUserMetier IUserMetier;

	@RequestMapping("/login")
	public String login() {
		return "login/login";
	}

	@RequestMapping("/passWordRecFail")
	public String passWordRecFail() {
		return "login/passWordRecFail";
	}

	@RequestMapping("/passWordRecSucc")
	public String passWordRecSucc() {
		return "login/passWordRecSucc";
	}

	@RequestMapping(value = "/passWordRec", method = RequestMethod.GET)
	public String passWordRec(Model model) throws IOException {
		// public String generatePassword() {

		model.addAttribute("UserModel", new User());
		return "login/passWordRec";
	}

	@RequestMapping(value = "/PassRec", method = RequestMethod.POST)
	public String PassRec(@ModelAttribute("SpringWeb") UserModel userModel,
			Model model) throws IOException {
		return IUserMetier.getNewPassword(userModel.getUsername());
	}

	@RequestMapping(value = "/lockscreen", method = RequestMethod.GET)
	public String logout(Model model, HttpServletRequest request)

	{
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		HttpSession session = request.getSession();
		Long idUser = IUserMetier.findByusername(username);
		model.addAttribute("user", IUserMetier.findOne(idUser));

		return "login/lockscreen";
	}

}
