package pfe.com.tunisie.service;

import java.util.List;
import pfe.com.tunisie.entities.Activity;

public interface IActivityMetier {
	public void save(Activity activity);

	public Activity findOne(Long idActivity);

	public void delete(Long idActivity);

	public List<Activity> findAll();

	public List<Activity> findByIdUser(Long idUser);

}
