package pfe.com.tunisie.service;

import java.util.List;


import pfe.com.tunisie.entities.FileTask;

public interface IFileTaskMetier {
	public void save(FileTask fileTask);

	public FileTask findOne(Long idFileTask);

	public void delete(Long idFileTask);

	public List<FileTask> findAll();

	public  List<FileTask> findFileByTask(Long idTask);

	public void save(FileTask f, long idfileTask);

}
