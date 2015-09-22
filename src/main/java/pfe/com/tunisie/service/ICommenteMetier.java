package pfe.com.tunisie.service;



import java.util.Date;
import java.util.List;

import pfe.com.tunisie.entities.Commente;

public interface ICommenteMetier {
	public void save(Commente commente);

	public Commente findOne(Long idCommente);

	public void delete(Long idCommente);

	public List<Commente> findAll();

	

	public List<Commente> findByIdTask(Long idTask);

	public void save(String description, long idTask, Long idUser, Date date);

	public void update(long idCommente, String description, Date date);

}
