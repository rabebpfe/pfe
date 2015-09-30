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
	@ManyToOne
	@JoinColumn(name = "create_By")
	private User users;
	private String Description;
	@ManyToOne
	@JoinColumn(name = "idUser")
	private User user;
	private int day;
	private String month;
	long hours;
	long munite;
	public Long getIdNotification() {
		return idNotification;
	}
	public void setIdNotification(Long idNotification) {
		this.idNotification = idNotification;
	}
	public User getUsers() {
		return users;
	}
	public void setUsers(User users) {
		this.users = users;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
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
	public long getHours() {
		return hours;
	}
	public void setHours(long hours) {
		this.hours = hours;
	}
	public long getMunite() {
		return munite;
	}
	public void setMunite(long munite) {
		this.munite = munite;
	}
	public Notification(Long idNotification, User users, String description,
			User user, int day, String month, long hours, long munite) {
		super();
		this.idNotification = idNotification;
		this.users = users;
		Description = description;
		this.user = user;
		this.day = day;
		this.month = month;
		this.hours = hours;
		this.munite = munite;
	}
	public Notification() {
		super();
		
	}

	

}
