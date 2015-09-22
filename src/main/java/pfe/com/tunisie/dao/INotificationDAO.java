package pfe.com.tunisie.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import pfe.com.tunisie.entities.Notification;

public interface INotificationDAO extends JpaRepository<Notification, Long>,
		CrudRepository<Notification, Long> {

}
