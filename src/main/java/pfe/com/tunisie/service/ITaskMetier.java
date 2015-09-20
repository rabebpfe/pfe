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
			String description, String Projet, String Attribuer, Long idUser);

	public void update(long idTask, String nom, Date date, String priorite,
			String description, String projet, String user, Long idUser);

}
