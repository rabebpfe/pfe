package pfe.com.tunisie.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import pfe.com.tunisie.entities.Task;

public interface ITaskDAO extends JpaRepository<Task, Long>,
		CrudRepository<Task, Long> {

}
