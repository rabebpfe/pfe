package pfe.com.tunisie.service;


import java.text.ParseException;
import java.util.List;

import pfe.com.tunisie.entities.Event;

public interface IEventMetier {
	public void save(Event event);

	public Event findOne(Long idEvent);

	public void delete(Long idEvent);

	public List<Event> findAll();

	

	public void editEvent(Long idEvent, String title, String description, Long idUser);

	public void saveEvent(String title, String description, java.util.Date start, java.util.Date end, Long idUser)throws ParseException ;

}
