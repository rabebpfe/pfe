package pfe.com.tunisie.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import pfe.com.tunisie.entities.Project;


public interface IProjetDAO extends JpaRepository<Project, Long>,
		CrudRepository<Project, Long> {
	Project findBynom(String nom);

}
