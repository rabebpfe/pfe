package pfe.com.tunisie.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import pfe.com.tunisie.entities.Activity;

public interface IActivityDAO extends JpaRepository<Activity, Long>,
		CrudRepository<Activity, Long> {

}
