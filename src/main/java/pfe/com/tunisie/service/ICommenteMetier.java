package pfe.com.tunisie.service;

import java.util.List;
import pfe.com.tunisie.entities.Commente;

public interface ICommenteMetier {
	public void save(Commente commente);

	public Commente findOne(Long idCommente);

	public void delete(Long idCommente);

	public List<Commente> findAll();

}
