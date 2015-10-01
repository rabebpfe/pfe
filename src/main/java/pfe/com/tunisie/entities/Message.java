package pfe.com.tunisie.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


@Entity
public class Message implements Serializable {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)

	private Long idMail;
	private String sujet;
	private String message; 
	
	@ManyToOne
	@JoinColumn(name = "create_By")
	private User users;
	@ManyToOne
	@JoinColumn(name = "idUser")
	private User user;
	
	private int day;
	private String month;
	long hours;
	long munite;
	public Long getIdMail() {
		return idMail;
	}
	public void setIdMail(Long idMail) {
		this.idMail = idMail;
	}
	public String getSujet() {
		return sujet;
	}
	public void setSujet(String sujet) {
		this.sujet = sujet;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public User getUsers() {
		return users;
	}
	public void setUsers(User users) {
		this.users = users;
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
	public Message() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Message(Long idMail, String sujet, String message, User users,
			User user, int day, String month, long hours, long munite) {
		super();
		this.idMail = idMail;
		this.sujet = sujet;
		this.message = message;
		this.users = users;
		this.user = user;
		this.day = day;
		this.month = month;
		this.hours = hours;
		this.munite = munite;
	}


	
	
}
