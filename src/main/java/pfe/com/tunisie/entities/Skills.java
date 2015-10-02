package pfe.com.tunisie.entities;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Skills implements Serializable {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idSkills;
	
	private String nomSkills;
	
	@ManyToOne
	@JoinColumn(name = "idUser")
	private User user;

	public Long getIdSkills() {
		return idSkills;
	}

	public Skills(Long idSkills, String nomSkills, User user) {
		super();
		this.idSkills = idSkills;
		this.nomSkills = nomSkills;
		this.user = user;
	}

	public Skills() {
		super();
		
	}

	public void setIdSkills(Long idSkills) {
		this.idSkills = idSkills;
	}

	public String getNomSkills() {
		return nomSkills;
	}

	public void setNomSkills(String nomSkills) {
		this.nomSkills = nomSkills;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}
