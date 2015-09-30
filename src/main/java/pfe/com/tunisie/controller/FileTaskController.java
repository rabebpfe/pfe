package pfe.com.tunisie.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import pfe.com.tunisie.entities.FileTask;

import pfe.com.tunisie.service.IFileTaskMetier;
import pfe.com.tunisie.service.IProjetMetier;
import pfe.com.tunisie.service.IUserMetier;

@Controller
public class FileTaskController {
	@Autowired
	private IUserMetier IUserMetier;
	@Autowired
	private IProjetMetier IProjetMetier;
	@Autowired
	private IFileTaskMetier IFileTaskMetier;

	@RequestMapping(value = "/Upload", method = RequestMethod.POST)
	public String saveFileProjet(FileTask f, BindingResult BindingResult,
			Model model, MultipartFile file, HttpServletRequest request)
			throws Exception {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = auth.getName();
		request.getSession().setAttribute("username", username);
		Long idUser = IUserMetier.findByusername(username);
		model.addAttribute("user", IUserMetier.findOne(idUser));

		if (!file.isEmpty()) {
			f.setFile(file.getBytes());
			f.setNom(file.getOriginalFilename());

		}

		long idTask = (Long) request.getSession().getAttribute("idTask");

		IFileTaskMetier.save(f, idTask);

		return "redirect:/taskDetail?idTask=" + idTask;

	}
	
	@RequestMapping(value = "/Download")
	public ModelAndView download(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Long id = (long) ServletRequestUtils.getRequiredIntParameter(request,
				"id");

		FileTask file = IFileTaskMetier.findOne(id);

		response.setContentLength(file.getFile().length);
		response.setHeader("Content-Disposition", "attachment; filename=\""
				+ file.getNom() + "\"");

		FileCopyUtils.copy(file.getFile(), response.getOutputStream());

		return null;

	}

}
