package pfe.com.tunisie.model;

import java.sql.Date;

public class ProjetModel {
	private Long idProject;
	private String nom;
	private String categorie;
	private String status;
	private String estimation_budget;
	private String estimation_dure;
	private String description;
	private Date date;

	public Long getIdProject() {
		return idProject;
	}

	public void setIdProject(Long idProject) {
		this.idProject = idProject;
	}

	public ProjetModel() {
		super();
	
	}

	public ProjetModel(Long idProject, String nom, String categorie,
			String status, String estimation_budget, String estimation_dure,
			String description, Date date) {
		super();
		this.idProject = idProject;
		this.nom = nom;
		this.categorie = categorie;
		this.status = status;
		this.estimation_budget = estimation_budget;
		this.estimation_dure = estimation_dure;
		this.description = description;
		this.date = date;
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

	public String getEstimation_budget() {
		return estimation_budget;
	}

	public void setEstimation_budget(String estimation_budget) {
		this.estimation_budget = estimation_budget;
	}

	public String getEstimation_dure() {
		return estimation_dure;
	}

	public void setEstimation_dure(String estimation_dure) {
		this.estimation_dure = estimation_dure;
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

	
}
