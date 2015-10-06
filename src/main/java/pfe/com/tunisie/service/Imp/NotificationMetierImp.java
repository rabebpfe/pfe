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

		int j = 0;
		for (int i = Notification.size()-1; i>= 0 ; i--) {
			if (Notification.get(i).getUser().getIdUser() == idUser && j >= 0
					&& j <= 3) {
				Notifications.add(Notification.get(i));
				j = j + 1;
			}
		}
		return Notifications;
	}
	@Override
	public List<Notification> findAllByIdUser(Long idUser) {
	
		List<Notification> Notifications = new ArrayList<Notification>();
		List<Notification> Notification = INotificationDAO.findAll();
		
		for (int i = Notification.size()-1; i>= 0 ; i--) {
			if (Notification.get(i).getUser().getIdUser() == idUser ) {
				Notifications.add(Notification.get(i));
			
			}
		}
		return Notifications;
	}

	@Override
	public Notification findReadByIdUser(Long idUser) {
		Notification Notifications = new Notification();
		List<Notification> Notification = INotificationDAO.findAll();
		int j=0;
		for (int i = Notification.size()-1; i>= 0 ; i--) {
			if (Notification.get(i).getUser().getIdUser() == idUser  && j == 0 ) {
				Notifications.setDay(Notification.get(i).getDay());
				Notifications.setHours(Notification.get(i).getHours());
				
				Notifications.setMonth(Notification.get(i).getMonth());
				Notifications.setMunite(Notification.get(i).getMunite());
				Notifications.setDescription(Notification.get(i).getDescription());
				Notifications.setUser(Notification.get(i).getUser());
				Notifications.setUsers(Notification.get(i).getUsers());
				j=j+1;
			
			}
		}
		return Notifications;
	}

}
