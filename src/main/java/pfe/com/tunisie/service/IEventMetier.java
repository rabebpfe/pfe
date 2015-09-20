package pfe.com.tunisie.service;

import java.util.List;
import pfe.com.tunisie.entities.Event;

public interface IEventMetier {
	public void save(Event event);

	public Event findOne(Long idEvent);

	public void delete(Long idEvent);

	public List<Event> findAll();

}
