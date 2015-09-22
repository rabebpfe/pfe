package pfe.com.tunisie.model;

import java.sql.Date;

public class TaskModel {
	private Long idTask;
	private String nom;
	private Date date;
	private String status;
	private String priorite;
	private Long create_by;
	private String user;
	private String description;
	private String Projet;

	public TaskModel(Long idTask, String nom, Date date, String status,
			String priorite, Long create_by, String user, String description,
			String Projet) {
		super();
		this.idTask = idTask;
		this.nom = nom;
		this.date = date;
		this.status = status;
		this.priorite = priorite;
		this.create_by = create_by;
		this.user = user;
		this.description = description;
		this.Projet = Projet;

	}

	public String getProjet() {
		return Projet;
	}

	public void setProjet(String projet) {
		Projet = projet;
	}

	public String getDescription() {
		return description;
	}

	public TaskModel(Long idTask, String nom, Date date, String status,
			String priorite, Long create_by, String user, String description) {
		super();
		this.idTask = idTask;
		this.nom = nom;
		this.date = date;
		this.status = status;
		this.priorite = priorite;
		this.create_by = create_by;
		this.user = user;
		this.description = description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public TaskModel(Long idTask, String nom, Date date, String status,
			String priorite, Long create_by, String user) {
		super();
		this.idTask = idTask;
		this.nom = nom;
		this.date = date;
		this.status = status;
		this.priorite = priorite;
		this.create_by = create_by;
		this.user = user;
	}

	public String getPriorite() {
		return priorite;
	}

	public void setPriorite(String priorite) {
		this.priorite = priorite;
	}

	public TaskModel() {
		super();

	}

	public TaskModel(Long idTask, String nom, Date date, String status,
			Long create_by, String user) {
		super();
		this.idTask = idTask;
		this.nom = nom;
		this.date = date;
		this.status = status;
		this.create_by = create_by;
		this.user = user;
	}

	public Long getIdTask() {
		return idTask;
	}

	public void setIdTask(Long idTask) {
		this.idTask = idTask;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Long getCreate_by() {
		return create_by;
	}

	public void setCreate_by(Long create_by) {
		this.create_by = create_by;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

}
