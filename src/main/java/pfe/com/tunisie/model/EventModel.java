package pfe.com.tunisie.model;

public class EventModel {

	private Long idEvent;
	private String title;
	private String description;
	private Long m;
	private Long d;
	private Long y;
	

	public EventModel(Long idEvent, String title, String description, Long m,
			Long d, Long y) {
		super();
		this.idEvent = idEvent;
		this.title = title;
		this.description = description;
		this.m = m;
		this.d = d;
		this.y = y;
	}

	public Long getM() {
		return m;
	}

	public void setM(Long m) {
		this.m = m;
	}

	public Long getD() {
		return d;
	}

	public void setD(Long d) {
		this.d = d;
	}

	public Long getY() {
		return y;
	}

	public void setY(Long y) {
		this.y = y;
	}

	public Long getIdEvent() {
		return idEvent;
	}

	public void setIdEvent(Long idEvent) {
		this.idEvent = idEvent;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public EventModel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public EventModel(Long idEvent, String title, String description) {
		super();
		this.idEvent = idEvent;
		this.title = title;
		this.description = description;
	}

}
