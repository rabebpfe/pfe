package pfe.com.tunisie.model;

public class SkillsModel {
	private Long idSkills;
	private String nomSkills;
	private Long idUser;
	
	public SkillsModel() {
		super();

	}

	public SkillsModel(Long idSkills, String nomSkills, Long idUser) {
		super();
		this.idSkills = idSkills;
		this.nomSkills = nomSkills;
		this.idUser = idUser;
	}

	public Long getIdSkills() {
		return idSkills;
	}

	public void setIdSkills(Long idSkills) {
		this.idSkills = idSkills;
	}

	public String getNomSkills() {
		return nomSkills;
	}

	public void setNomSkills(String nomSkills) {
		this.nomSkills = nomSkills;
	}

	public Long getIdUser() {
		return idUser;
	}

	public void setIdUser(Long idUser) {
		this.idUser = idUser;
	}

	
}
