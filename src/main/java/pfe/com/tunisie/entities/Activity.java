package pfe.com.tunisie.entities;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Activity implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idActivity;
	private int day;
	private String month;
	private String description;

	@ManyToOne
	@JoinColumn(name = "idUser")
	private User user;

	public User getUser() {
		return user;
	}

	public Activity(Long idActivity, int day, String month, String description,
			User user) {
		super();
		this.idActivity = idActivity;
		this.day = day;
		this.month = month;
		this.description = description;
		this.user = user;
	}

	public int getDay() {
		return day;
	}

	public void setDay(int day) {
		this.day = day;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Long getIdActivity() {
		return idActivity;
	}

	public void setIdActivity(Long idActivity) {
		this.idActivity = idActivity;
	}

	public Activity(Long idActivity, String description) {
		super();
		this.idActivity = idActivity;

		this.description = description;

	}

	public String getDescription() {
		return description;
	}

	public Activity() {
		super();

	}

	public void setDescription(String description) {
		this.description = description;
	}
}
