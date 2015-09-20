package pfe.com.tunisie.service;

import java.util.List;
import pfe.com.tunisie.entities.Task;

public interface ITaskMetier {
	public void save(Task task);

	public Task findOne(Long idTask);

	public void delete(Long idTask);

	public List<Task> findAll();

}
