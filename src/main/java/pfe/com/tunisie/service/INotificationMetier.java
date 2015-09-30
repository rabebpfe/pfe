package pfe.com.tunisie.service;

import java.util.List;
import pfe.com.tunisie.entities.Notification;

public interface INotificationMetier {
	public void save(Notification notification);

	public Notification findOne(Long idNotification);

	public void delete(Long idNotification);

	public List<Notification> findAll();

	public List<Notification>  findByIdUser(Long idUser);

}
