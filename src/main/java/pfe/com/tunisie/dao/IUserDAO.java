package pfe.com.tunisie.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import pfe.com.tunisie.entities.User;

public interface IUserDAO extends JpaRepository<User, Long>,
		CrudRepository<User, Long> {
	User findByemail(String email);

	User findByusername(String username);

}
