package pfe.com.tunisie.service.Imp;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pfe.com.tunisie.dao.IEventDAO;
import pfe.com.tunisie.entities.Event;
import pfe.com.tunisie.service.IEventMetier;

@Transactional
@Service
public class EventMetierImp implements IEventMetier {
	@Autowired
	private IEventDAO IEventDAO;

	@Override
	public void save(Event event) {
		IEventDAO.save(event);

	}

	@Override
	public Event findOne(Long idEvent) {

		return IEventDAO.findOne(idEvent);
	}

	@Override
	public void delete(Long idEvent) {
		IEventDAO.delete(idEvent);
	}

	@Override
	public List<Event> findAll() {

		return IEventDAO.findAll();
	}

}
