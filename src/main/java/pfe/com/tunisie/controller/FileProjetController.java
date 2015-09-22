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
import pfe.com.tunisie.entities.FileProjet;
import pfe.com.tunisie.service.IFileProjetMetier;
import pfe.com.tunisie.service.IProjetMetier;
import pfe.com.tunisie.service.IUserMetier;

@Controller
public class FileProjetController {
	@Autowired
	private IUserMetier IUserMetier;
	@Autowired
	private IProjetMetier IProjetMetier;
	@Autowired
	private IFileProjetMetier IFileProjetMetier;

	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public String saveFileProjet(FileProjet f, BindingResult BindingResult,
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

		long idProject = (Long) request.getSession().getAttribute("idProject");

		IFileProjetMetier.save(f, idProject);

		return "redirect:/projetDetail?idProject=" + idProject;

	}

	@RequestMapping(value = "/download")
	public ModelAndView download(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Long id = (long) ServletRequestUtils.getRequiredIntParameter(request,
				"id");

		FileProjet file = IFileProjetMetier.findOne(id);

		response.setContentLength(file.getFile().length);
		response.setHeader("Content-Disposition", "attachment; filename=\""
				+ file.getNom() + "\"");

		FileCopyUtils.copy(file.getFile(), response.getOutputStream());

		return null;

	}

}
