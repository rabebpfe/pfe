package pfe.com.tunisie.entities;
import java.io.Serializable;
import java.util.Collection;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.OneToMany;

@Entity
public class User implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idUser;
	@Column(unique = true)
	private String username;
	private String password;
	@Column(unique = true)
	String email;
	private String adresse;
	@Lob
	private byte[] photo;
	private String nomPhoto;
	boolean actived;
	@OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
	private List<Role> roles;
	@OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
	private Collection<Commente> commentes;

	@OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
	private Collection<Activity> activitys;

	@OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
	private Collection<Project> projets;

	@OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
	private Collection<Skills> skills;

	@OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
	private Collection<Notification> notifications;
	@OneToMany(mappedBy = "users", cascade = CascadeType.ALL)
	private Collection<Notification> notfication;
	@OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
	private Collection<Event> events;
	@OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
	private Collection<Message> mails;
	@OneToMany(mappedBy = "users", cascade = CascadeType.ALL)
	private Collection<Message> messages;
	
	

	public Collection<Message> getMessages() {
		return messages;
	}

	public void setMessages(Collection<Message> messages) {
		this.messages = messages;
	}

	public Collection<Message> getMails() {
		return mails;
	}

	public void setMails(Collection<Message> mails) {
		this.mails = mails;
	}

	public Collection<Event> getEvents() {
		return events;
	}

	public void setEvents(Collection<Event> events) {
		this.events = events;
	}

	public boolean isActived() {
		return actived;
	}

	public void setActived(boolean actived) {
		this.actived = actived;
	}

	public User(String username, String password, String email, String adresse,
		byte[] photo, String nomPhoto, boolean actived, List<Role> roles) {
		super();
		this.username = username;
		this.password = password;
		this.email = email;
		this.adresse = adresse;
		this.photo = photo;
		this.nomPhoto = nomPhoto;
		this.actived = actived;
		this.roles = roles;
	}

	

	public Collection<Project> getProjets() {
		return projets;
	}

	public void setProjets(Collection<Project> projets) {
		this.projets = projets;
	}

	
	public Collection<Notification> getNotifications() {
		return notifications;
	}

	public void setNotifications(Collection<Notification> notifications) {
		this.notifications = notifications;
	}

	public Collection<Skills> getSkills() {
		return skills;
	}

	public void setSkills(Collection<Skills> skills) {
		this.skills = skills;
	}

	public User(String username, String password, String email, String adresse,
			byte[] photo, String nomPhoto, List<Role> roles,
			Collection<Skills> skills) {
		super();
		this.username = username;
		this.password = password;
		this.email = email;
		this.adresse = adresse;
		this.photo = photo;
		this.nomPhoto = nomPhoto;
		this.roles = roles;
		this.skills = skills;
	}

	public User(String username, String password, String email, String adresse,
			List<Role> roles, byte[] photo) {
		super();
		this.username = username;
		this.password = password;
		this.email = email;
		this.adresse = adresse;
		this.roles = roles;
		this.photo = photo;

	}

	public User(Long idUser, String username, String password, String email,
			String adresse, List<Role> roles) {
		super();
		this.idUser = idUser;
		this.username = username;
		this.password = password;
		this.email = email;

		this.adresse = adresse;
		this.roles = roles;

	}

	public String getAdresse() {
		return adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	public Long getIdUser() {
		return idUser;
	}

	public void setIdUser(Long idUser) {
		this.idUser = idUser;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public User(Long idUser, String username, String password, String email) {
		super();
		this.idUser = idUser;
		this.username = username;
		this.password = password;
		this.email = email;
	}

	public List<Role> getRoles() {
		return roles;
	}

	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}

	public Collection<Commente> getCommentes() {
		return commentes;
	}

	public void setCommentes(Collection<Commente> commentes) {
		this.commentes = commentes;
	}

	public Collection<Activity> getActivitys() {
		return activitys;
	}

	public void setActivitys(Collection<Activity> activitys) {
		this.activitys = activitys;
	}

	public byte[] getPhoto() {
		return photo;
	}

	public void setPhoto(byte[] photo) {
		this.photo = photo;
	}

	public User(Long idUser, String username, String password, String email,
			String adresse, byte[] photo, String nomPhoto, List<Role> roles) {
		super();
		this.idUser = idUser;
		this.username = username;
		this.password = password;
		this.email = email;
		this.adresse = adresse;
		this.photo = photo;
		this.nomPhoto = nomPhoto;
		this.roles = roles;
	}

	public String getNomPhoto() {
		return nomPhoto;
	}

	public void setNomPhoto(String nomPhoto) {
		this.nomPhoto = nomPhoto;
	}

	public User() {
		super();

	}

	public User(String username2, String password2, String email2,
			String adresse2, byte[] photo2, String nomphoto2, Object photoUser) {

	}

}
