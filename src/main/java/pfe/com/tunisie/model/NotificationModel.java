package pfe.com.tunisie.model;

public class NotificationModel {

	private Long idNotification;
	private String description;
	private String create_By;
	private String user;
	public NotificationModel(Long idNotification, String description,
			String create_By, String user) {
		super();
		this.idNotification = idNotification;
		description = description;
		this.create_By = create_By;
		this.user = user;
	}

	public String getCreate_By() {
		return create_By;
	}

	public void setCreate_By(String create_By) {
		this.create_By = create_By;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public Long getIdNotification() {
		return idNotification;
	}

	public void setIdNotification(Long idNotification) {
		this.idNotification = idNotification;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	

	public NotificationModel(Long idNotification, String description
			) {
		super();
		this.idNotification = idNotification;
		this.description = description;

	}

	public NotificationModel() {
		super();

	}

}
