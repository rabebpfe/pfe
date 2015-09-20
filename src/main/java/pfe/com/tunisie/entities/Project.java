package pfe.com.tunisie.entities;

import java.io.Serializable;
import java.sql.Date;
import java.util.Collection;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Project implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idProject;
	private String nom;

	private String categorie;
	private String status;
	private Long estimation_budget;
	private Long estimation_dure;
	private String description;
	private Date date;

	@OneToMany(mappedBy = "projet", cascade = CascadeType.ALL)
	private Collection<Task> tasks;

	@OneToMany(mappedBy = "projet", cascade = CascadeType.ALL)
	private Collection<FileProjet> fileProject;
	@ManyToOne
	@JoinColumn(name = "idUser")
	private User user;
	
	public Project(Long idProject, String nom, String categorie, String status,
			Long estimation_budget, Long estimation_dure, String description,
			Date date, Collection<Task> tasks,
			Collection<FileProjet> fileProject, User user) {
		super();
		this.idProject = idProject;
		this.nom = nom;
		this.categorie = categorie;
		this.status = status;
		this.estimation_budget = estimation_budget;
		this.estimation_dure = estimation_dure;
		this.description = description;
		this.date = date;
		this.tasks = tasks;
		this.fileProject = fileProject;
		this.user = user;
	}


	public Long getEstimation_budget() {
		return estimation_budget;
	}

	public Project(String nom, String categorie, String status,
			Long estimation_budget, Long estimation_dure, Long idProject,
			String description, Date date, User user, Collection<Task> tasks,
			Collection<FileProjet> fileProject) {
		super();
		this.nom = nom;
		this.categorie = categorie;
		this.status = status;
		this.estimation_budget = estimation_budget;
		this.estimation_dure = estimation_dure;
		this.idProject = idProject;
		this.description = description;
		this.date = date;
		this.user = user;
		this.tasks = tasks;
		this.fileProject = fileProject;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Collection<Task> getTasks() {
		return tasks;
	}

	public void setTasks(Collection<Task> tasks) {
		this.tasks = tasks;
	}

	public Collection<FileProjet> getFileProject() {
		return fileProject;
	}

	public void setFileProject(Collection<FileProjet> fileProject) {
		this.fileProject = fileProject;
	}

	public void setEstimation_budget(Long estimation_budget) {
		this.estimation_budget = estimation_budget;
	}

	public Long getEstimation_dure() {
		return estimation_dure;
	}

	public void setEstimation_dure(Long estimation_dure) {
		this.estimation_dure = estimation_dure;
	}

	public Project() {
		super();

	}

	public Project(Long idProject, String nom, String categorie, String status) {
		super();
		this.idProject = idProject;
		this.nom = nom;
		this.categorie = categorie;
		this.status = status;
	}

	public Long getIdProject() {
		return idProject;
	}

	public void setIdProject(Long idProject) {
		this.idProject = idProject;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getCategorie() {
		return categorie;
	}

	public void setCategorie(String categorie) {
		this.categorie = categorie;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
}
