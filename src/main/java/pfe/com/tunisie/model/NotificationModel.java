package pfe.com.tunisie.model;

public class NotificationModel {

	private Long idNotification;
	private String description;
	private String create_By;
	private String user;
	private int day;
	private String month;
	long hours;
	long munite;
	
	public NotificationModel(Long idNotification, String description,
			String create_By, String user, int day, String month, long hours,
			long munite) {
		super();
		this.idNotification = idNotification;
		this.description = description;
		this.create_By = create_By;
		this.user = user;
		this.day = day;
		this.month = month;
		this.hours = hours;
		this.munite = munite;
	}

	public int getDay() {
		return day;
	}

	public void setDay(int day) {
		this.day = day;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public long getHours() {
		return hours;
	}

	public void setHours(long hours) {
		this.hours = hours;
	}

	public long getMunite() {
		return munite;
	}

	public void setMunite(long munite) {
		this.munite = munite;
	}

	public NotificationModel(Long idNotification, String description,
			String create_By, String user) {
		super();
		this.idNotification = idNotification;
		this.description = description;
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
