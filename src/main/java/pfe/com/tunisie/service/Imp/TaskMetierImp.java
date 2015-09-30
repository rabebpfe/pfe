package pfe.com.tunisie.service.Imp;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pfe.com.tunisie.dao.IActivityProjectDAO;
import pfe.com.tunisie.dao.INotificationDAO;
import pfe.com.tunisie.dao.IProjetDAO;
import pfe.com.tunisie.dao.ITaskDAO;
import pfe.com.tunisie.dao.IUserDAO;
import pfe.com.tunisie.entities.ActivityProject;
import pfe.com.tunisie.entities.Notification;
import pfe.com.tunisie.entities.Project;
import pfe.com.tunisie.entities.Task;
import pfe.com.tunisie.entities.User;
import pfe.com.tunisie.service.ITaskMetier;

@Transactional
@Service
public class TaskMetierImp implements ITaskMetier {
	@Autowired
	private ITaskDAO ITaskDAO;
	@Autowired
	private IProjetDAO IProjetDAO;
	@Autowired
	private IUserDAO IUserDAO;
	@Autowired
	private INotificationDAO INotificationDAO;
	@Autowired
	private IActivityProjectDAO IActivityProjectDAO;
	@Override
	public void save(Task task) {
		ITaskDAO.save(task);

	}

	@Override
	public Task findOne(Long idTask) {

		return ITaskDAO.findOne(idTask);
	}

	@Override
	public void delete(Long idTask) {
		ITaskDAO.delete(idTask);

	}

	@Override
	public List<Task> findAll() {

		return ITaskDAO.findAll();
	}



	@Override
	public void update(long idTask, String nom, Date date, String priorite,
			String description, String projet, String user, Long idUser) {

		Task task=ITaskDAO.findOne(idTask);
		task.setDate(date);
		task.setDescription(description);
		task.setNom(nom);
		task.getPriorite();
		task.setStatus("Open");
		Project Project = IProjetDAO.findBynom(projet);
		task.setProjet(Project);
		User User=IUserDAO.findByemail(user);
		task.setUser(User.getIdUser());
		task.setCreate_by(idUser);
		
		ITaskDAO.save(task);
		
	}

	@Override
	public List<Task> findByIdUser(Long idUser) {
		List<Task> Tasks = new ArrayList<Task>();
		List<Task> Task = ITaskDAO.findAll();

		for (int i = 0; i < Task.size(); i++) {
			if (Task.get(i).getUser() == idUser) {
				Tasks.add(Task.get(i));
			}
		}
		return Tasks;

	}

	@Override
	public void saveTask(String nom, Date date, String priorite,
			String description, String Projet, String Attribuer, Long idUser,
			java.util.Date date2) {
		Task Task = new Task();
		Task.setDescription(description);
		Task.setNom(nom);
		Task.setDate(date);
		Task.setPriorite(priorite);
		Task.setStatus("Open");
		Project Project = IProjetDAO.findBynom(Projet);
		Task.setProjet(Project);
		User User=IUserDAO.findByemail(Attribuer);
		Task.setUser(User.getIdUser());
		Task.setCreate_by(idUser);
	
		ITaskDAO.save(Task);
		Notification Notification=new Notification();
		ActivityProject ActivityProject=new ActivityProject();
		Notification.setUser(User);
		
		User user=IUserDAO.findOne(idUser);
		Notification.setUsers(user);
		Notification.setDescription("Un administrateur"+"  " +user.getUsername()+ "vous avez attribuer une tache intitulé  "+nom);
		int day = date2.getDate();
		int month = date2.getMonth() + 1;
		long hours=date2.getHours();
		long munite=date2.getMinutes();
		Notification.setHours(hours);
		Notification.setMunite(munite);
		if (month == 1) {
			Notification.setMonth("Janvier");
			ActivityProject.setMonth("Janvier");
		}
		if (month == 2) {
			Notification.setMonth("F�vrier");
			ActivityProject.setMonth("F�vrier");
		}
		if (month == 3) {
			Notification.setMonth("Mars");
			ActivityProject.setMonth("Mars");
		}
		if (month == 4) {
			Notification.setMonth("Avril");
			ActivityProject.setMonth("Avril");
		}
		if (month == 5) {
			Notification.setMonth("Mai");
			ActivityProject.setMonth("Mai");
		}
		if (month == 6) {
			Notification.setMonth("Juin");
			ActivityProject.setMonth("Juin");
		}
		if (month == 7) {
			Notification.setMonth("Juillet");
			ActivityProject.setMonth("Juillet");
		}
		if (month == 8) {
			Notification.setMonth("Aout");
			ActivityProject.setMonth("Aout");
		}
		if (month == 9) {
			Notification.setMonth("Septembre");
			ActivityProject.setMonth("Septembre");
		}
		if (month == 10) {
			Notification.setMonth("Octobre");
			ActivityProject.setMonth("Octobre");
		}
		if (month == 11) {
			Notification.setMonth("Novembre");
			ActivityProject.setMonth("Novembre");
		}
		if (month == 12) {
			Notification.setMonth("D�cembre");
			ActivityProject.setMonth("D�cembre");
		}

		Notification.setDay(day);
		ActivityProject.setDay(day);
		ActivityProject.setIdUser(idUser);
		ActivityProject.setDescription("Un administrateur "+"  " +user.getUsername()+ "vous avez  attribuer une tache intitulé  "+nom+" pour votre projet");
		ActivityProject.setProjet(Project);
		
		

		INotificationDAO.save(Notification);
		IActivityProjectDAO.save(ActivityProject);
	
		
		
	
		
		
	}

	@Override
	public List<Task> findByResult(String Status, Long idUser) {
		List<Task> Tasks = new ArrayList<Task>();
		List<Task> Task = ITaskDAO.findAll();

		for (int i = 0; i < Task.size(); i++) {
			if (Task.get(i).getUser() == idUser	&&	
					Task.get(i).getStatus().equals(Status)) {
				Tasks.add(Task.get(i));
			}
		}
		return Tasks;
	}

	@Override
	public List<Task> findByReview(String Status, Long idUser) {
		List<Task> Tasks = new ArrayList<Task>();
		List<Task> Task = ITaskDAO.findAll();

		for (int i = 0; i < Task.size(); i++) {
			if (Task.get(i).getUser() == idUser	&&	
					Task.get(i).getStatus().equals(Status)) {
				Tasks.add(Task.get(i));
			}
		}
		return Tasks;
	}

	@Override
	public List<Task> findByTest(String Status, Long idUser) {
		List<Task> Tasks = new ArrayList<Task>();
		List<Task> Task = ITaskDAO.findAll();

		for (int i = 0; i < Task.size(); i++) {
			if (Task.get(i).getUser() == idUser	&&	
					Task.get(i).getStatus().equals(Status)) {
				Tasks.add(Task.get(i));
			}
		}
		return Tasks;
	}

	@Override
	public List<Task> findByOpen(String Status, Long idUser) {
		List<Task> Tasks = new ArrayList<Task>();
		List<Task> Task = ITaskDAO.findAll();

		for (int i = 0; i < Task.size(); i++) {
			if (Task.get(i).getUser() == idUser	&&	
					Task.get(i).getStatus().equals(Status)) {
				Tasks.add(Task.get(i));
			}
		}
		return Tasks;
	}


	



}
