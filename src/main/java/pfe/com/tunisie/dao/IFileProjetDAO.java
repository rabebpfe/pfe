package pfe.com.tunisie.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import pfe.com.tunisie.entities.FileProjet;

public interface IFileProjetDAO extends JpaRepository<FileProjet, Long>,
		CrudRepository<FileProjet, Long> {

}
