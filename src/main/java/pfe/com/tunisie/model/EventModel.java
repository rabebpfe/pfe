package pfe.com.tunisie.model;

import java.util.Date;



public class EventModel {

	private Long idEvent;
	private String title;
	private String description;
	private Date start;
	private Date end;
	public EventModel() {
		super();
		
	}
	public EventModel(Long idEvent, String title, String description,
			Date start, Date end) {
		super();
		this.idEvent = idEvent;
		this.title = title;
		this.description = description;
		this.start = start;
		this.end = end;
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
	public Date getStart() {
		return start;
	}
	public void setStart(Date start) {
		this.start = start;
	}
	public Date getEnd() {
		return end;
	}
	public void setEnd(Date end) {
		this.end = end;
	}
	
	

}