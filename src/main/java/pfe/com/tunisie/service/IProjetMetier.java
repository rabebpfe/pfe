package pfe.com.tunisie.service;

import java.util.List;
import pfe.com.tunisie.entities.Project;

public interface IProjetMetier {
	public void save(Project project);

	public Project findOne(Long idProjet);

	public void delete(Long idProjet);

	public List<Project> findAll();

	public List<Project> findByIdUser(Long idUser);

}
