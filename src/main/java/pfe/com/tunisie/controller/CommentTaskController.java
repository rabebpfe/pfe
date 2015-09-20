package pfe.com.tunisie.controller;

import java.util.Calendar;
import java.util.Date;

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

import pfe.com.tunisie.model.CommenteModel;
import pfe.com.tunisie.model.UserModel;
import pfe.com.tunisie.service.ICommenteMetier;
import pfe.com.tunisie.service.IUserMetier;

@Controller
public class CommentTaskController {
	@Autowired
	private IUserMetier IUserMetier;
	@Autowired
	private ICommenteMetier ICommenteMetier;

	@RequestMapping(value = "/saveComment", method = RequestMethod.POST)
	public String saveCommentProjet(
			@ModelAttribute("SpringWeb") CommenteModel CommenteModel,
			Model model, HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);
		model.addAttribute("user", IUserMetier.findOne(idUser));

		long idTask = (Long) request.getSession().getAttribute("idTask");

		Calendar calendar = Calendar.getInstance();
		Date date = calendar.getTime();
		ICommenteMetier.save(CommenteModel.getDescription(), idTask, idUser,
				date);

		return "redirect:/taskDetail?idTask=" + idTask;

	}

	@RequestMapping(value = "/editComment")
	public String editCommentProjet(
			@ModelAttribute("SpringWeb") CommenteModel CommenteModel,
			Model model, HttpServletRequest request, @RequestParam Long idCommente) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		long idUser = IUserMetier.findByusername(username);
		model.addAttribute("user", IUserMetier.findOne(idUser));

		long idTask = (Long) request.getSession().getAttribute("idTask");
		
		   
		

		Calendar calendar = Calendar.getInstance();
		Date date = calendar.getTime();

		ICommenteMetier
				.update(idCommente, CommenteModel.getDescription(), date);

		return "redirect:/taskDetail?idTask=" + idTask;

	}

	@RequestMapping(value = "/suppComment", method = RequestMethod.GET)
	public String deleteCommente(
			@ModelAttribute("SpringWeb") UserModel UserModel, ModelMap model,
			@RequestParam Long idCommente, HttpServletRequest request)

	{
		ICommenteMetier.delete(idCommente);
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);
		model.addAttribute("user", IUserMetier.findOne(idUser));

		long idTask = (Long) request.getSession().getAttribute("idTask");

		return "redirect:/taskDetail?idTask=" + idTask;
	}

}
