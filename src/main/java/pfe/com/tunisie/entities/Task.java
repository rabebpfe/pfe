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
public class Task implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idTask;
	private String nom;
	private Date date;
	private String status;
	private Long create_by;
	private Long user;
	private String description;
	private String priorite;
	@OneToMany(mappedBy = "task", cascade = CascadeType.ALL)
	private Collection<Commente> commentes;
	@ManyToOne
	@JoinColumn(name = "idProjet")
	private Project projet;
	@OneToMany(mappedBy = "task", cascade = CascadeType.ALL)
	private Collection<FileTask> fileTasks;
	
	
	public Task(Long idTask, String nom, Date date, String status,
			 Long create_by, Long user,
			String description, String priorite,
			Collection<Commente> commentes, Project projet,
			Collection<FileTask> fileTasks) {
		super();
		this.idTask = idTask;
		this.nom = nom;
		this.date = date;
		this.status = status;
	
		this.create_by = create_by;
		this.user = user;
		this.description = description;
		this.priorite = priorite;
		this.commentes = commentes;
		this.projet = projet;
		this.fileTasks = fileTasks;
	}

	

	public String getPriorite() {
		return priorite;
	}

	public void setPriorite(String priorite) {
		this.priorite = priorite;
	}

	public Collection<Commente> getCommentes() {
		return commentes;
	}

	public void setCommentes(Collection<Commente> commentes) {
		this.commentes = commentes;
	}

	public Project getProjet() {
		return projet;
	}

	public void setProjet(Project projet) {
		this.projet = projet;
	}

	public Collection<FileTask> getFileTasks() {
		return fileTasks;
	}

	public void setFileTasks(Collection<FileTask> fileTasks) {
		this.fileTasks = fileTasks;
	}

	

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Task(Long idTask, String nom, Date date, String status,
			 Long create_by, Long user) {
		super();
		this.idTask = idTask;
		this.nom = nom;
		this.date = date;
		this.status = status;
		
		this.create_by = create_by;
		this.user = user;
	}

	public Long getCreate_by() {
		return create_by;
	}

	public void setCreate_by(Long create_by) {
		this.create_by = create_by;
	}

	public Long getUser() {
		return user;
	}

	public void setUser(Long user) {
		this.user = user;
	}

	

	public Task() {
		super();

	}

	public Task(Long idTask, String nom, Date date, String status) {
		super();
		this.idTask = idTask;
		this.nom = nom;
		this.date = date;
		this.status = status;
		
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



}
