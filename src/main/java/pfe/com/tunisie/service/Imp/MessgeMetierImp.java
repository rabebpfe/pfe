package pfe.com.tunisie.service.Imp;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pfe.com.tunisie.dao.IMessageDAO;
import pfe.com.tunisie.entities.Mail;
import pfe.com.tunisie.service.IMessageMetier;

@Transactional
@Service
public class MessgeMetierImp implements IMessageMetier {
	@Autowired
	private IMessageDAO IMessageDAO;

	@Override
	public void save(Mail message) {
		IMessageDAO.save(message);

	}

	@Override
	public Mail findOne(Long idMessage) {

		return IMessageDAO.findOne(idMessage);
	}

	@Override
	public void delete(Long idMessage) {
		IMessageDAO.delete(idMessage);

	}

	@Override
	public List<Mail> findAll() {

		return IMessageDAO.findAll();
	}

}
