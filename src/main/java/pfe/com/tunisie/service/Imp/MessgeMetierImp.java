package pfe.com.tunisie.service.Imp;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pfe.com.tunisie.dao.IMessageDAO;
import pfe.com.tunisie.dao.IUserDAO;
import pfe.com.tunisie.entities.Message;
import pfe.com.tunisie.entities.Notification;
import pfe.com.tunisie.entities.User;
import pfe.com.tunisie.service.ApplicationMailer;
import pfe.com.tunisie.service.IMessageMetier;

@Transactional
@Service
public class MessgeMetierImp implements IMessageMetier {
	@Autowired
	private IMessageDAO IMessageDAO;
	@Autowired
	private IUserDAO IUserDAO;
	@Autowired
	private ApplicationMailer applicationMailer;

	@Override
	public void save(Message message) {
		IMessageDAO.save(message);

	}

	@Override
	public Message findOne(Long idMessage) {

		return IMessageDAO.findOne(idMessage);
	}

	@Override
	public void delete(Long idMessage) {
		IMessageDAO.delete(idMessage);

	}

	@Override
	public List<Message> findAll() {

		return IMessageDAO.findAll();
	}



	@Override
	public void send(String message, String subject, String to, Long idUser,
			Date date) {
		Message Message=new Message();
		Message.setMessage(message);
		Message.setSujet(subject);
        User user=IUserDAO.findByemail(to);
		Message.setUser(user);
		User user1=IUserDAO.findOne(idUser);
		Message.setUsers(user1);
		int day = date.getDate();
		int month = date.getMonth() + 1;
		long hours=date.getHours();
		long munite=date.getMinutes();
		Message.setHours(hours);
		Message.setMunite(munite);
		if (month == 1) {
			Message.setMonth("Janvier");
		
		}
		if (month == 2) {
			Message.setMonth("F�vrier");
		
		}
		if (month == 3) {
			Message.setMonth("Mars");
			
		}
		if (month == 4) {
			Message.setMonth("Avril");
			
		}
		if (month == 5) {
			Message.setMonth("Mai");
			
		}
		if (month == 6) {
			Message.setMonth("Juin");
		
		}
		if (month == 7) {
			Message.setMonth("Juillet");
			
		}
		if (month == 8) {
			Message.setMonth("Aout");
		
		}
		if (month == 9) {
			Message.setMonth("Septembre");
		
		}
		if (month == 10) {
			Message.setMonth("Octobre");
			
		}
		if (month == 11) {
	
			Message.setMonth("Novembre");
		}
		if (month == 12) {
			Message.setMonth("D�cembre");
		
		}

		Message.setDay(day);
		
		IMessageDAO.save(Message);
		
	}

	@Override
	public List<Message> findByIdUser(Long idUser) {
		List<Message> Messages = new ArrayList<Message>();
		List<Message> Message = IMessageDAO.findAll();

		for (int i = 0; i < Message.size(); i++) {
			if (Message.get(i).getUser().getIdUser() == idUser) {
				Messages.add(Message.get(i));
			}
		}
		return Messages;
	}

	@Override
	public List<Message> findByCreate_By(Long idUser) {
		List<Message> Messages = new ArrayList<Message>();
		List<Message> Message = IMessageDAO.findAll();

		for (int i = 0; i < Message.size(); i++) {
			if (Message.get(i).getUsers().getIdUser() == idUser) {
				Messages.add(Message.get(i));
			}
		}
		return Messages;
	}

}
