package pfe.com.tunisie.service.Imp;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pfe.com.tunisie.dao.IProjetDAO;
import pfe.com.tunisie.dao.ITaskDAO;
import pfe.com.tunisie.dao.IUserDAO;
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
	public void saveTask(String nom, Date date, String priorite,
			String description, String Projet, String Attribuer, Long idUser) {
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

	



}
