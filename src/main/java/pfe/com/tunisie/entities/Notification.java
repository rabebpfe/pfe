package pfe.com.tunisie.entities;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Notification implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idNotification;
	private String Description;
	@ManyToOne
	@JoinColumn(name = "idUser")
	private User user;

	public Notification(Long idNotification, String description) {
		super();
		this.idNotification = idNotification;
		Description = description;
	}

	public Notification() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Long getIdNotification() {
		return idNotification;
	}

	public void setIdNotification(Long idNotification) {
		this.idNotification = idNotification;
	}

	public String getDescription() {
		return Description;
	}

	public void setDescription(String description) {
		Description = description;
	}

}
