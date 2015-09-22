package pfe.com.tunisie.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;

@Entity
public class FileProjet implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idfileProject;
	private String nom;

	@Lob
	private byte[] file;
	@ManyToOne
	@JoinColumn(name = "idProjet")
	private Project projet;

	public byte[] getFile() {
		return file;
	}

	public FileProjet(Long idfileProject, String nom, byte[] file,
			Project projet) {
		super();
		this.idfileProject = idfileProject;
		this.nom = nom;
		this.file = file;
		this.projet = projet;
	}

	public void setFile(byte[] file) {
		this.file = file;
	}

	public Project getProjet() {
		return projet;
	}

	public void setProjet(Project projet) {
		this.projet = projet;
	}

	

	public FileProjet() {
		super();

	}

	public FileProjet(Long idfileProject, String nom) {
		super();
		this.idfileProject = idfileProject;
		this.nom = nom;
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
}
