package pfe.com.tunisie.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import pfe.com.tunisie.entities.Message;

public interface IMessageDAO extends JpaRepository<Message, Long>,
		CrudRepository<Message, Long> {

}
