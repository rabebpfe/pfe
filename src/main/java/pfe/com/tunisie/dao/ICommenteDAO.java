package pfe.com.tunisie.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import pfe.com.tunisie.entities.Commente;

public interface ICommenteDAO extends JpaRepository<Commente, Long>,
		CrudRepository<Commente, Long> {

}
