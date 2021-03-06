package pfe.com.tunisie.service;

import java.sql.Date;
import java.util.List;

import pfe.com.tunisie.entities.Task;

public interface ITaskMetier {
	public void save(Task task);

	public Task findOne(Long idTask);

	public void delete(Long idTask);

	public List<Task> findAll();

	public void saveTask(String nom, Date date, String priorite,
			String description, String Projet, String Attribuer, Long idUser,
			java.util.Date date2);

	public void update(long idTask, String nom, Date date, String priorite,
			String description, String projet, String user, Long idUser);

	public List<Task> findByIdUser(Long idUser);

	public List<Task> findByStatus(String string, Long idUser);

	public void IN_progress(Long idTask);

	public void Open(Long idTask);

	public void Code_Review(Long idTask);

	public void Done(Long idTask);

	public void attribut(Long idTask, String email, Long idUser, java.util.Date date);

	public void saveHours(Long idTask, Long hours);







}
