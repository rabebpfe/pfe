package pfe.com.tunisie.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;

@Entity
public class FileTask implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)

	private Long idfileTask; 
	private String nom;
	@Lob
	private byte[] file;
	@ManyToOne
	@JoinColumn(name="idTask")
	private Task task;
	
	public byte[] getFile() {
		return file;
	}
	public void setFile(byte[] file) {
		this.file = file;
	}
	
	
	public Task getTask() {
		return task;
	}
	public void setTask(Task task) {
		this.task = task;
	}
	public Long getIdfileTask() {
		return idfileTask;
	}
	
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public FileTask() {
		super();
		
	}
	public FileTask(Long idfileTask, String nom) {
		super();
		this.idfileTask = idfileTask;
		this.nom = nom;
	}
	public Long getIdTask() {
		return idfileTask;
	}
	public void setIdfileTask(Long idfileTask) {
		this.idfileTask = idfileTask;
	}
}
