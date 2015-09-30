package pfe.com.tunisie.entities;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Event implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idEvent;
	private String title;
	private String description;
	private Long m;
	private Long d;
	private Long y;
	@ManyToOne
	@JoinColumn(name = "idUser")
	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Event(Long idEvent, String title, String description, Long m,
			Long d, Long y) {
		super();
		this.idEvent = idEvent;
		this.title = title;
		this.description = description;
		this.m = m;
		this.d = d;
		this.y = y;
	}

	public Long getM() {
		return m;
	}

	public void setM(Long m) {
		this.m = m;
	}

	public Long getD() {
		return d;
	}

	public void setD(Long d) {
		this.d = d;
	}

	public Long getY() {
		return y;
	}

	public void setY(Long y) {
		this.y = y;
	}

	public Event() {
		super();

	}

	public Event(Long idEvent, String title, String description) {
		super();
		this.idEvent = idEvent;
		this.title = title;
		this.description = description;
	}

	public Long getIdEvent() {
		return idEvent;
	}

	public void setIdEvent(Long idEvent) {
		this.idEvent = idEvent;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
