package pfe.com.tunisie.service.Imp;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pfe.com.tunisie.dao.ITaskDAO;
import pfe.com.tunisie.entities.Task;
import pfe.com.tunisie.service.ITaskMetier;

@Transactional
@Service
public class TaskMetierImp implements ITaskMetier {
	@Autowired
	private ITaskDAO ITaskDAO;

	@Override
	public void save(Task task) {
		ITaskDAO.save(task);

	}

	@Override
	public Task findOne(Long idTask) {

		return ITaskDAO.findOne(idTask);
	}

	@Override
	public void delete(Long idTask) {
		ITaskDAO.delete(idTask);

	}

	@Override
	public List<Task> findAll() {

		return ITaskDAO.findAll();
	}

}
