package pfe.com.tunisie.service.Imp;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pfe.com.tunisie.dao.IProjetDAO;
import pfe.com.tunisie.dao.IUserDAO;
import pfe.com.tunisie.entities.Project;
import pfe.com.tunisie.entities.User;
import pfe.com.tunisie.service.IProjetMetier;

@Transactional
@Service
public class ProjetMetierImp implements IProjetMetier {
	@Autowired
	private IProjetDAO IProjetDAO;
	@Autowired
	private IUserDAO IUserDAO;
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
	@Override
	public void saveProjet(String description, String nom, String categorie,
			Date date, String status, Long estimation_dure,
			Long estimation_budget,Long idUser) {
		Project Project =new Project ();
		Project.setCategorie(categorie);
		Project.setDate(date);
		Project .setDescription(description);
		Project .setEstimation_dure(estimation_dure);
		Project .setEstimation_budget(estimation_budget);
		Project .setStatus(status);
		Project.setNom(nom);
		User user=IUserDAO.findOne(idUser);
		Project.setUser(user);
		
		IProjetDAO.save(Project);
		
	}

	@Override
	public void update(long idProject, String nom, String description,
			String categorie, Long estimation_budget, Long estimation_dure,
			String status, Date date) {
		
		Project Project=IProjetDAO.findOne(idProject);
		Project.setNom(nom);
		Project.setCategorie(categorie);
		Project.setDate(date);
		Project.setEstimation_budget(estimation_budget);
		Project.setEstimation_dure(estimation_dure);
		Project.setStatus(status);
		Project.setDescription(description);
		IProjetDAO.save(Project);
		
		
	}

	


}
