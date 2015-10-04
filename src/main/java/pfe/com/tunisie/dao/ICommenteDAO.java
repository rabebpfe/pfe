package pfe.com.tunisie.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import pfe.com.tunisie.entities.Comment;

public interface ICommenteDAO extends JpaRepository<Comment, Long>,
		CrudRepository<Comment, Long> {

}
