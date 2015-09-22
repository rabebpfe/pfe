package pfe.com.tunisie.entities;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Mail implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idMail;
	private String to;
	private String subject;
	private String message;

	public Long getIdMail() {
		return idMail;
	}

	public void setIdMail(Long idMail) {
		this.idMail = idMail;
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

	public Mail(Long idMail, String to, String subject, String message,
			User user) {
		super();
		this.idMail = idMail;
		this.to = to;
		this.subject = subject;
		this.message = message;
	}

	public Mail() {
		super();

	}

	public Mail(Long idMail, String to, String subject, String message) {
		super();
		this.idMail = idMail;
		this.to = to;
		this.subject = subject;
		this.message = message;
	}
}
