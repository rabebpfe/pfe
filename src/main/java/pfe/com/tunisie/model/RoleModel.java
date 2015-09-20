package pfe.com.tunisie.model;

public class RoleModel {

	private Long idRole;
	private String nomRole;
	private Long idUser;

	public RoleModel() {
		super();

	}

	public RoleModel(Long idRole, String nomRole, Long idUser) {
		super();
		this.idRole = idRole;
		this.nomRole = nomRole;
		this.idUser = idUser;
	}

	public Long getIdRole() {
		return idRole;
	}

	public void setIdRole(Long idRole) {
		this.idRole = idRole;
	}

	public String getNomRole() {
		return nomRole;
	}

	public void setNomRole(String nomRole) {
		this.nomRole = nomRole;
	}

	public Long getIdUser() {
		return idUser;
	}

	public void setIdUser(Long idUser) {
		this.idUser = idUser;
	}

}
