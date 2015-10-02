package pfe.com.tunisie.entities;

import java.io.Serializable;
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
	private int day;
	private String month;
	@ManyToOne
	@JoinColumn(name = "idUser")
	private User user;

	

	public Commente(Long idCommente, String description, int day, String month,
			User user, Task task) {
		super();
		this.idCommente = idCommente;
		Description = description;
		this.day = day;
		this.month = month;
		this.user = user;
		this.task = task;
		
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


	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Task getTask() {
		return task;
	}

	public void setTask(Task task) {
		this.task = task;
	}

	@ManyToOne
	@JoinColumn(name = "idTask")
	private Task task;

	

	

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
