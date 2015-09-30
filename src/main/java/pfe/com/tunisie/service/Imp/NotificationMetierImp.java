package pfe.com.tunisie.service.Imp;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pfe.com.tunisie.dao.INotificationDAO;
import pfe.com.tunisie.entities.Notification;
import pfe.com.tunisie.service.INotificationMetier;

@Transactional
@Service
public class NotificationMetierImp implements INotificationMetier {
	@Autowired
	private INotificationDAO INotificationDAO;

	@Override
	public void save(Notification notification) {
		INotificationDAO.save(notification);

	}

	@Override
	public Notification findOne(Long idNotification) {

		return INotificationDAO.findOne(idNotification);
	}

	@Override
	public void delete(Long idNotification) {
		INotificationDAO.delete(idNotification);

	}

	@Override
	public List<Notification> findAll() {

		return INotificationDAO.findAll();
	}

	@Override
	public List<Notification> findByIdUser(Long idUser) {
	
		List<Notification> Notifications = new ArrayList<Notification>();
		List<Notification> Notification = INotificationDAO.findAll();

		for (int i = 0; i < Notification.size(); i++) {
			if (Notification.get(i).getUser().getIdUser() == idUser) {
				Notifications.add(Notification.get(i));
			}
		}
		return Notifications;
	}

}
