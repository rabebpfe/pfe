package pfe.com.tunisie.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import pfe.com.tunisie.entities.Mail;

public interface IMessageDAO extends JpaRepository<Mail, Long>,
		CrudRepository<Mail, Long> {

}
