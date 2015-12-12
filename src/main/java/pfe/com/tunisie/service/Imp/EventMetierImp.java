package pfe.com.tunisie.service.Imp;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pfe.com.tunisie.dao.IEventDAO;
import pfe.com.tunisie.dao.IUserDAO;
import pfe.com.tunisie.entities.Event;
import pfe.com.tunisie.entities.User;
import pfe.com.tunisie.service.IEventMetier;

@Transactional
@Service
public class EventMetierImp implements IEventMetier {
	@Autowired
	private IEventDAO IEventDAO;
	@Autowired
	private IUserDAO IUserDAO;

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

	@Override
	public void editEvent(Long idEvent, String title, String description,
			Long idUser) {
		Event Event = IEventDAO.findOne(idEvent);
		Event.setDescription(description);
		User user = IUserDAO.findOne(idUser);
		Event.setUser(user);
		Event.setTitle(title);
		IEventDAO.save(Event);

	}

	@Override
	public void saveEvent(String title, String description, Date start,
			Date end, Long idUser) throws ParseException {
		System.out.println(start);
		System.out.println(end);

		String format = "yyyy-MM-dd HH:mm:ss";
		
		

		SimpleDateFormat formater = new SimpleDateFormat(format);
		

		Event Event = new Event();
		Event.setStart(formater.format(start));
		Event.setEnd(formater.format(end));
		Event.setDescription(description);
		Event.setTitle(title);

		User user = IUserDAO.findOne(idUser);
		Event.setUser(user);
		IEventDAO.save(Event);

	}

	

}
