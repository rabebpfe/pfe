package pfe.com.tunisie.model;

public class FileTaskModel {

	private Long idfileTask;
	private String nom;
	private Long idTask;

	public Long getIdfileTask() {
		return idfileTask;
	}

	public void setIdfileTask(Long idfileTask) {
		this.idfileTask = idfileTask;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public Long getIdTask() {
		return idTask;
	}

	public void setIdTask(Long idTask) {
		this.idTask = idTask;
	}

	public FileTaskModel(Long idfileTask, String nom, Long idTask) {
		super();
		this.idfileTask = idfileTask;
		this.nom = nom;
		this.idTask = idTask;
	}

	public FileTaskModel() {
		super();

	}

}
