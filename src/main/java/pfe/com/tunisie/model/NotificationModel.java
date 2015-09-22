package pfe.com.tunisie.model;

public class NotificationModel {

	private Long idNotification;
	private String Description;
	private Long idUser;

	public Long getIdNotification() {
		return idNotification;
	}

	public void setIdNotification(Long idNotification) {
		this.idNotification = idNotification;
	}

	public String getDescription() {
		return Description;
	}

	public void setDescription(String description) {
		Description = description;
	}

	public Long getIdUser() {
		return idUser;
	}

	public void setIdUser(Long idUser) {
		this.idUser = idUser;
	}

	public NotificationModel(Long idNotification, String description,
			Long idUser) {
		super();
		this.idNotification = idNotification;
		Description = description;
		this.idUser = idUser;
	}

	public NotificationModel() {
		super();

	}

}
