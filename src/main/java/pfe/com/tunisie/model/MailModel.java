package pfe.com.tunisie.model;

public class MailModel {

	private Long idMail;
	private String to;
	private String subject;
	private String message;

	public Long getIdMail() {
		return idMail;
	}

	public MailModel() {
		super();

	}

	public void setIdMail(Long idMail) {
		this.idMail = idMail;
	}

	public MailModel(Long idMail, String to, String subject, String message) {
		super();
		this.idMail = idMail;
		this.to = to;
		this.subject = subject;
		this.message = message;
	}

	public String getTo() {
		return to;
	}

	public void setTo(String to) {
		this.to = to;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	
}
