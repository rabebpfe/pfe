package pfe.com.tunisie.service.Imp;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pfe.com.tunisie.dao.IProjetDAO;
import pfe.com.tunisie.dao.ITaskDAO;
import pfe.com.tunisie.dao.IUserDAO;
import pfe.com.tunisie.entities.Project;
import pfe.com.tunisie.entities.Task;
import pfe.com.tunisie.entities.User;
import pfe.com.tunisie.service.IProjetMetier;

@Transactional
@Service
public class ProjetMetierImp implements IProjetMetier {
	@Autowired
	private IProjetDAO IProjetDAO;
	@Autowired
	private IUserDAO IUserDAO;
	@Autowired
	private ITaskDAO ITaskDAO;

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
		List<Task> Task = ITaskDAO.findAll();
	
		for (int i = 0; i < Project.size(); i++) {
			int l = 0;
			int j = 0;
			long s ;
			if (Project.get(i).getUser().getIdUser() == idUser) {
				Projects.add(Project.get(i));
				System.out.println("**************projet ***************"+Project.get(i).getIdProject());

				for (int k = 0; k < Task.size(); k++) {
					if (Task.get(k).getProjet().getIdProject()
							.equals(Project.get(i).getIdProject()))

					{
						j = j + 1;
						
					}

				}
				System.out.println("**************j ***************"+j);
				
				for (int k = 0; k < Task.size(); k++) {
					if ((Task.get(k).getStatus().equals("Review")
							|| Task.get(k).getStatus().equals("IN progress")
							|| Task.get(k).getStatus().equals("Open"))
							&& Task.get(k).getProjet().getIdProject()
									.equals(Project.get(i).getIdProject())) {
						l = l + 1;
					
					}
				}
				System.out.println("**************l ***************"+l);
				
				if (l == 0) {

					s = (long) 100;
					Project.get(i).setStatus("Done");
					
				    Project.get(i).setContribution(s);
					IProjetDAO.save(Project);

				}
			

				else {
				
					s = (long) (l*100)/j ;
					Project.get(i).setStatus("Open");
					Project.get(i).setContribution(s);
					IProjetDAO.save(Project);
				}
				
			}

		}

		return Projects;

	}

	@Override
	public void saveProjet(String description, String nom, String categorie,
			Date date, String status, String estimation_budget,
			String estimation_dure, Long idUser) {
		Project Project = new Project();
		Project.setCategorie(categorie);
		Project.setDate(date);
		Project.setDescription(description);
		Project.setEstimation_dure(estimation_dure);
		Project.setEstimation_budget(estimation_budget);
		Project.setStatus(status);
		Project.setNom(nom);
		User user = IUserDAO.findOne(idUser);
		Project.setUser(user);

		IProjetDAO.save(Project);

	}

	@Override
	public void update(long idProject, String nom, String description,
			String categorie, String estimation_dure, String estimation_budget,
			String status, Date date) {

		Project Project = IProjetDAO.findOne(idProject);
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
