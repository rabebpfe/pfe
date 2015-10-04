package pfe.com.tunisie.service;



import java.util.Date;
import java.util.List;

import pfe.com.tunisie.entities.Comment;

public interface ICommenteMetier {
	public void save(Comment commente);

	public Comment findOne(Long idCommente);

	public void delete(Long idCommente);

	public List<Comment> findAll();

	

	public List<Comment> findByIdTask(Long idTask);

	public void save(String description, long idTask, Long idUser, Date date);

	public void update(long idCommente, String description, Date date);

}
