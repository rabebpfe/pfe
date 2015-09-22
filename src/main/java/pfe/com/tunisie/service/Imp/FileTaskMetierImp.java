package pfe.com.tunisie.service.Imp;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pfe.com.tunisie.dao.IFileTaskDAO;
import pfe.com.tunisie.dao.ITaskDAO;

import pfe.com.tunisie.entities.FileTask;

import pfe.com.tunisie.entities.Task;
import pfe.com.tunisie.service.IFileTaskMetier;

@Transactional
@Service
public class FileTaskMetierImp implements IFileTaskMetier {
	@Autowired
	private IFileTaskDAO IFileTaskDAO;
	@Autowired
	private ITaskDAO ITaskDAO;

	@Override
	public void save(FileTask fileTask) {
		IFileTaskDAO.save(fileTask);

	}

	@Override
	public FileTask findOne(Long idFileTask) {

		return IFileTaskDAO.findOne(idFileTask);
	}

	@Override
	public void delete(Long idFileTask) {
		IFileTaskDAO.delete(idFileTask);

	}

	@Override
	public List<FileTask> findAll() {

		return IFileTaskDAO.findAll();
	}

	@Override
	public List<FileTask> findFileByTask(Long idTask) {

		List<FileTask> file = new ArrayList<FileTask>();
		for (FileTask FileListe : IFileTaskDAO.findAll()) {

			if (FileListe.getTask().getIdTask() == idTask) {

				file.add(FileListe);
			}
		}

		return file;
	}

	@Override
	public void save(FileTask f, long idfileTask) {

		Task Task =

		ITaskDAO.findOne(idfileTask);
		f.setTask(Task);
		;
		IFileTaskDAO.save(f);
	}

}
