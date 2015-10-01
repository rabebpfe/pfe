package pfe.com.tunisie.service.Imp;


import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pfe.com.tunisie.dao.IActivityProjectDAO;
import pfe.com.tunisie.entities.ActivityProject;
import pfe.com.tunisie.service.IActivityProjectMetier;

@Transactional
@Service
public class ActivityProjectMetierImp implements IActivityProjectMetier {
	@Autowired
	private IActivityProjectDAO IActivityProjectDAO;

	@Override
	public void save(ActivityProject ActivityProject) {
		IActivityProjectDAO.save(ActivityProject);
		
	}

	@Override
	public ActivityProject findOne(Long idActivityProject) {
		
		return IActivityProjectDAO.findOne(idActivityProject);
	}

	@Override
	public void delete(Long idActivityProject) {
		IActivityProjectDAO.delete(idActivityProject);
		
	}

	@Override
	public List<ActivityProject> findAll() {
		
		return IActivityProjectDAO.findAll();
	}

	@Override
	public List<ActivityProject> findByIdProject(Long idProject) {
		
		List<ActivityProject> Activitys = new ArrayList<ActivityProject>();
		List<ActivityProject> Activity = IActivityProjectDAO.findAll();

		for (int i = 0; i < Activity.size(); i++) {
			if (Activity.get(i).getProjet().getIdProject()== idProject) {
				Activitys.add(Activity.get(i));
			}
		}
		return Activitys;
	}

	
}
