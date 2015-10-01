package pfe.com.tunisie.model;



public class MessageModel {

	private Long idMail;
	private String sujet;
	private String message; 
	private String create_By;
	private String user;
	
	private int day;
	private String month;
	long hours;
	long munite;
	public MessageModel(Long idMail, String sujet, String message,
			String create_By, String user, int day, String month, long hours,
			long munite) {
		super();
		this.idMail = idMail;
		this.sujet = sujet;
		this.message = message;
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
	public Long getIdMail() {
		return idMail;
	}
	public void setIdMail(Long idMail) {
		this.idMail = idMail;
	}
	public String getSujet() {
		return sujet;
	}
	public void setSujet(String sujet) {
		this.sujet = sujet;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
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
	public MessageModel(Long idMail, String sujet, String message,
			String create_By, String user) {
		super();
		this.idMail = idMail;
		this.sujet = sujet;
		this.message = message;
		this.create_By = create_By;
		this.user = user;
	}
	public MessageModel() {
		super();

	}
	
}
