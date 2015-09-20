package pfe.com.tunisie.service;

import java.util.List;
import pfe.com.tunisie.entities.Mail;

public interface IMessageMetier {
	public void save(Mail message);

	public Mail findOne(Long idMessage);

	public void delete(Long idMessage);

	public List<Mail> findAll();

}
