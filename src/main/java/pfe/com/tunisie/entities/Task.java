package pfe.com.tunisie.entities;

import java.io.Serializable;
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
	private String durée;
	private String status;
	private String estumation;
	private Long create_by;
	private Long attribuer;

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

	private String description;

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Task(Long idTask, String nom, String durée, String status,
			String estumation, Long create_by, Long attribuer) {
		super();
		this.idTask = idTask;
		this.nom = nom;
		this.durée = durée;
		this.status = status;
		this.estumation = estumation;
		this.create_by = create_by;
		this.attribuer = attribuer;
	}

	public Long getCreate_by() {
		return create_by;
	}

	public void setCreate_by(Long create_by) {
		this.create_by = create_by;
	}

	public Long getAttribuer() {
		return attribuer;
	}

	public void setAttribuer(Long attribuer) {
		this.attribuer = attribuer;
	}

	@OneToMany(mappedBy = "task", cascade = CascadeType.ALL)
	private Collection<Commente> commentes;
	@ManyToOne
	@JoinColumn(name = "idProjet")
	private Project projet;
	@OneToMany(mappedBy = "task", cascade = CascadeType.ALL)
	private Collection<FileTask> fileTasks;

	public Task() {
		super();

	}

	public Task(Long idTask, String nom, String durée, String status,
			String estumation) {
		super();
		this.idTask = idTask;
		this.nom = nom;
		this.durée = durée;
		this.status = status;
		this.estumation = estumation;
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

	public String getDurée() {
		return durée;
	}

	public void setDurée(String durée) {
		this.durée = durée;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getEstumation() {
		return estumation;
	}

	public void setEstumation(String estumation) {
		this.estumation = estumation;
	}

}
