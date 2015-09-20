package pfe.com.tunisie.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import pfe.com.tunisie.entities.Skills;

public interface ISkillsDAO extends JpaRepository<Skills, Long>,
		CrudRepository<Skills, Long> {

}
