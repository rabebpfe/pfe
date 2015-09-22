package pfe.com.tunisie.service;

import java.util.List;

import pfe.com.tunisie.entities.FileProjet;

public interface IFileProjetMetier {
	public void save(FileProjet fileProjet);

	public FileProjet findOne(Long idFileProjet);

	public void delete(Long idFileProjet);

	public List<FileProjet> findAll();

	public List<FileProjet> findFileByProjects(Long idProject);

	public void save(FileProjet f, long idProject);

}
