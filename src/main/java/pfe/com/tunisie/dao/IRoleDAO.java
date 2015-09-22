package pfe.com.tunisie.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import pfe.com.tunisie.entities.Role;
import pfe.com.tunisie.entities.User;

public interface IRoleDAO extends JpaRepository<Role, Long>,
		CrudRepository<Role, Long> {
	Role findByuser(User user);


}
