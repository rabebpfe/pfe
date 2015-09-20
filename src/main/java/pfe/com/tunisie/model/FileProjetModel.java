package pfe.com.tunisie.model;

public class FileProjetModel {

	private Long idfileProject;
	private String nom;
	private Long idProject;

	public FileProjetModel(Long idfileProject, String nom, Long idProject) {
		super();
		this.idfileProject = idfileProject;
		this.nom = nom;
		this.idProject = idProject;
	}

	public FileProjetModel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Long getIdfileProject() {
		return idfileProject;
	}

	public void setIdfileProject(Long idfileProject) {
		this.idfileProject = idfileProject;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public Long getIdProject() {
		return idProject;
	}

	public void setIdProject(Long idProject) {
		this.idProject = idProject;
	}

}
