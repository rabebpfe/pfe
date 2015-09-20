package pfe.com.tunisie.entities;

import java.io.Serializable;
import java.sql.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Commente implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idCommente;
	private String Description;
	private Date date;

	@ManyToOne
	@JoinColumn(name = "idUser")
	private User user;

	@ManyToOne
	@JoinColumn(name = "idTask")
	private Task task;

	public Commente(Long idCommente, String description, Date date) {
		super();
		this.idCommente = idCommente;
		Description = description;
		this.date = date;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Long getIdCommente() {
		return idCommente;
	}

	public void setIdCommente(Long idCommente) {
		this.idCommente = idCommente;
	}

	public String getDescription() {
		return Description;
	}

	public void setDescription(String description) {
		Description = description;
	}

	public Commente() {
		super();

	}

	public Commente(Long idCommente, String description) {
		super();
		this.idCommente = idCommente;
		Description = description;
	}

}
