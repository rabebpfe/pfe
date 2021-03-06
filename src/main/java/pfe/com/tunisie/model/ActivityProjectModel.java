package pfe.com.tunisie.model;


public class ActivityProjectModel  {
	
	private Long idActivity;
	private int day;
	private String month;
	private String description;
	private Long idUser;
	private Long idProject;
	public Long getIdProject() {
		return idProject;
	}

	public void setIdProject(Long idProject) {
		this.idProject = idProject;
	}

	public ActivityProjectModel(Long idActivity, int day, String month, String description,
			Long idUser) {
		super();
		this.idActivity = idActivity;
		this.day = day;
		this.month = month;
		this.description = description;
		this.idUser = idUser;
	}

	public ActivityProjectModel() {
		super();
		
	}
	
	public Long getIdActivity() {
		return idActivity;
	}
	public void setIdActivity(Long idActivity) {
		this.idActivity = idActivity;
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Long getIdUser() {
		return idUser;
	}
	public void setIdUser(Long idUser) {
		this.idUser = idUser;
	}
	

}
