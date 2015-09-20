package pfe.com.tunisie.service.Imp;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pfe.com.tunisie.dao.IFileProjetDAO;
import pfe.com.tunisie.dao.IProjetDAO;
import pfe.com.tunisie.entities.FileProjet;
import pfe.com.tunisie.entities.Project;
import pfe.com.tunisie.service.IFileProjetMetier;

@Transactional
@Service
public class FileProjetMetierImp implements IFileProjetMetier {
	@Autowired
	private IFileProjetDAO IFileProjetDAO;
	@Autowired
	private IProjetDAO IProjetDAO;

	@Override
	public void save(FileProjet fileProjet) {
		IFileProjetDAO.save(fileProjet);

	}

	@Override
	public FileProjet findOne(Long idFileProjet) {

		return IFileProjetDAO.findOne(idFileProjet);
	}

	@Override
	public void delete(Long idFileProjet) {
		IFileProjetDAO.delete(idFileProjet);

	}

	@Override
	public List<FileProjet> findAll() {

		return IFileProjetDAO.findAll();
	}

	@Override
	public List<FileProjet> findFileByProjects(Long idProject) {
	
		List<FileProjet> file=new ArrayList<FileProjet>();
		for (FileProjet FileListe : IFileProjetDAO.findAll()) {
		
			if(FileListe.getProjet().getIdProject() ==idProject)
			{
				
			file.add(FileListe);
		}
		}
	    
	return file;
	}

	@Override
	public void save(FileProjet f, long idProject) {
		Project Project=
				
				IProjetDAO.findOne(idProject); 
		f.setProjet(Project);
		IFileProjetDAO.save(f);
		
	}

}
