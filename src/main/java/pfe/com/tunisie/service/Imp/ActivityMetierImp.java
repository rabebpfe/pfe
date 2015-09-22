package pfe.com.tunisie.service.Imp;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pfe.com.tunisie.dao.IActivityDAO;
import pfe.com.tunisie.entities.Activity;
import pfe.com.tunisie.service.IActivityMetier;

@Transactional
@Service
public class ActivityMetierImp implements IActivityMetier {
	@Autowired
	private IActivityDAO IActivityDAO;

	@Override
	public void save(Activity activity) {
		IActivityDAO.save(activity);

	}

	@Override
	public Activity findOne(Long idActivity) {

		return IActivityDAO.findOne(idActivity);
	}

	@Override
	public void delete(Long idActivity) {
		IActivityDAO.delete(idActivity);

	}

	@Override
	public List<Activity> findAll() {

		return IActivityDAO.findAll();
	}

	@Override
	public List<Activity> findByIdUser(Long idUser) {
		List<Activity> Activitys = new ArrayList<Activity>();
		List<Activity> Activity = IActivityDAO.findAll();

		for (int i = 0; i < Activity.size(); i++) {
			if (Activity.get(i).getUser().getIdUser() == idUser) {
				Activitys.add(Activity.get(i));
			}
		}
		return Activitys;

	}

}
