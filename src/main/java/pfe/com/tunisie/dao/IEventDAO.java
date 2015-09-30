package pfe.com.tunisie.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import pfe.com.tunisie.entities.Event;

public interface IEventDAO extends JpaRepository<Event, Long>,
		CrudRepository<Event, Long> {

}
