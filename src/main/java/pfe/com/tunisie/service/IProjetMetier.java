package pfe.com.tunisie.service;

import java.sql.Date;
import java.util.List;

import pfe.com.tunisie.entities.Project;

public interface IProjetMetier {
	public void save(Project project);

	public Project findOne(Long idProjet);

	public void delete(Long idProjet);

	public List<Project> findAll();

	public List<Project> findByIdUser(Long idUser);
	public void saveProjet(String description, String nom, String categorie,
			Date date, String status, String string,
			String string2, Long idUser);

	public void update(long idProject, String nom, String description,
			String categorie, String string, String string2,
			String status, Date date);




}
