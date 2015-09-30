package pfe.com.tunisie.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import pfe.com.tunisie.entities.FileTask;

public interface IFileTaskDAO extends JpaRepository<FileTask, Long>,
		CrudRepository<FileTask, Long> {

}
