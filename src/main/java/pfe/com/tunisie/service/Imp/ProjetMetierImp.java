package pfe.com.tunisie.service.Imp;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pfe.com.tunisie.dao.IProjetDAO;
import pfe.com.tunisie.entities.Project;
import pfe.com.tunisie.service.IProjetMetier;

@Transactional
@Service
public class ProjetMetierImp implements IProjetMetier {
	@Autowired
	private IProjetDAO IProjetDAO;

	@Override
	public void save(Project project) {
		IProjetDAO.save(project);

	}

	@Override
	public Project findOne(Long idProjet) {

		return IProjetDAO.findOne(idProjet);
	}

	@Override
	public void delete(Long idProjet) {
		IProjetDAO.delete(idProjet);

	}

	@Override
	public List<Project> findAll() {

		return IProjetDAO.findAll();
	}

	@Override
	public List<Project> findByIdUser(Long idUser) {
		List<Project> Projects = new ArrayList<Project>();
		List<Project> Project = IProjetDAO.findAll();

		for (int i = 0; i < Project.size(); i++) {
			if (Project.get(i).getUser().getIdUser() == idUser) {
				Projects.add(Project.get(i));
			}
		}
		return Projects;

	}

}
