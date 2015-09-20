package pfe.com.tunisie.service.Imp;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pfe.com.tunisie.dao.ICommenteDAO;
import pfe.com.tunisie.entities.Commente;
import pfe.com.tunisie.service.ICommenteMetier;

@Transactional
@Service
public class CommenteMetierImp implements ICommenteMetier {
	@Autowired
	private ICommenteDAO ICommenteDAO;

	@Override
	public void save(Commente commente) {
		ICommenteDAO.save(commente);

	}

	@Override
	public Commente findOne(Long idCommente) {

		return ICommenteDAO.findOne(idCommente);
	}

	@Override
	public void delete(Long idCommente) {
		ICommenteDAO.delete(idCommente);

	}

	@Override
	public List<Commente> findAll() {

		return ICommenteDAO.findAll();
	}

}
