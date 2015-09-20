package pfe.com.tunisie.service.Imp;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pfe.com.tunisie.dao.IFileProjetDAO;
import pfe.com.tunisie.entities.FileProjet;
import pfe.com.tunisie.service.IFileProjetMetier;

@Transactional
@Service
public class FileProjetMetierImp implements IFileProjetMetier {
	@Autowired
	private IFileProjetDAO IFileProjetDAO;

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

}
