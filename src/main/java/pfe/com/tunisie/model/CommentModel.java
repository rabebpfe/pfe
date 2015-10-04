package pfe.com.tunisie.model;

import java.sql.Date;

public class CommentModel {
	private Long idCommente;
	private String Description;
	private Date date;
	private Long idUser;
	private Long idTask;

	public CommentModel(Long idCommente, String description, Date date,
			Long idUser, Long idTask) {
		super();
		this.idCommente = idCommente;
		Description = description;
		this.date = date;
		this.idUser = idUser;
		this.idTask = idTask;
	}

	public CommentModel() {
		super();

	}

	public Long getIdCommente() {
		return idCommente;
	}

	public void setIdCommente(Long idCommente) {
		this.idCommente = idCommente;
	}

	public String getDescription() {
		return Description;
	}

	public void setDescription(String description) {
		Description = description;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Long getIdUser() {
		return idUser;
	}

	public void setIdUser(Long idUser) {
		this.idUser = idUser;
	}

	public Long getIdTask() {
		return idTask;
	}

	public void setIdTask(Long idTask) {
		this.idTask = idTask;
	}

}
