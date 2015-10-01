package pfe.com.tunisie.service;

import java.util.List;
import pfe.com.tunisie.entities.ActivityProject;

public interface IActivityProjectMetier {
	public void save(ActivityProject ActivityProject);

	public ActivityProject findOne(Long idActivityProject);

	public void delete(Long idActivityProject);

	public List<ActivityProject> findAll();

	public List<ActivityProject> findByIdProject(Long idProject);

	

}
