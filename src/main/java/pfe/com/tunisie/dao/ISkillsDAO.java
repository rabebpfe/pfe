package pfe.com.tunisie.dao;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import pfe.com.tunisie.entities.Skills;
import pfe.com.tunisie.entities.User;

public interface ISkillsDAO extends JpaRepository<Skills, Long>,
		CrudRepository<Skills, Long> {
	List<Skills>findByuser(User user);

}
