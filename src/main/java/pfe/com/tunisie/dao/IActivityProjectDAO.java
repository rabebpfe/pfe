package pfe.com.tunisie.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;


import pfe.com.tunisie.entities.ActivityProject;

public interface IActivityProjectDAO extends JpaRepository<ActivityProject, Long>,
		CrudRepository<ActivityProject, Long> {

}
