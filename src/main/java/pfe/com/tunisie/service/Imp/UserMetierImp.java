package pfe.com.tunisie.service.Imp;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.encoding.ShaPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pfe.com.tunisie.dao.IActivityDAO;
import pfe.com.tunisie.dao.ISkillsDAO;
import pfe.com.tunisie.dao.ITaskDAO;
import pfe.com.tunisie.dao.IUserDAO;
import pfe.com.tunisie.dao.IRoleDAO;
import pfe.com.tunisie.entities.Activity;
import pfe.com.tunisie.entities.Role;
import pfe.com.tunisie.entities.Skills;
import pfe.com.tunisie.entities.Task;
import pfe.com.tunisie.entities.User;
import pfe.com.tunisie.service.ApplicationMailer;
import pfe.com.tunisie.service.IUserMetier;

@Transactional
@Service
public class UserMetierImp implements IUserMetier {
	@Autowired
	private IUserDAO IUserDAO;
	@Autowired
	private IRoleDAO IRoleDAO;
	@Autowired
	private ISkillsDAO ISkillsDAO;
	@Autowired
	private ApplicationMailer applicationMailer;
	@Autowired
	private IActivityDAO IActivityDAO;

	@Autowired
	private ITaskDAO ITaskDAO;

	@Override
	public void save(User user) {
		IUserDAO.save(user);

	}

	@Override
	public User findOne(Long idUser) {

		return IUserDAO.findOne(idUser);
	}

	@Override
	public void delete(Long idUser) {

		IUserDAO.delete(idUser);
	}

	@Override
	public List<User> findAll() {

		return IUserDAO.findAll();
	}

	public String getNewPassword(String email) {
		int len = 8;
		char[] pwd = new char[len];
		int c = 'A';
		int rand = 0;
		for (int i = 0; i < 8; i++) {
			rand = (int) (Math.random() * 3);
			switch (rand) {
			case 0:
				c = '0' + (int) (Math.random() * 10);
				break;
			case 1:
				c = 'a' + (int) (Math.random() * 26);
				break;
			case 2:
				c = 'A' + (int) (Math.random() * 26);
				break;
			}
			pwd[i] = (char) c;
		}

		try {

			User user = IUserDAO.findByemail(email);

			applicationMailer.sendMail(email,
					"Tunisie technologie Watch  : New Password",
					"user name is : " + user.getUsername()
							+ " and password is:" + pwd.toString());

			ShaPasswordEncoder sha = new ShaPasswordEncoder(256);
			sha.setEncodeHashAsBase64(false);
			String hash = sha.encodePassword(pwd.toString(), null);
			user.setPassword(hash);
			IUserDAO.save(user);

			return "login/passWordRecSucc";
		} catch (Exception e) {

		}
		return "login/passWordRecFail";

	}

	@Override
	public Long findByusername(String username) {
		User u = IUserDAO.findByusername(username);
		Long IdUser = u.getIdUser();
		return IdUser;
	}

	@Override
	public List<User> useredit(Long idUser) {
		List<User> users = IUserDAO.findAll();

		for (int i = 0; i < users.size(); i++) {
			if (users.get(i).getIdUser() == idUser) {

				users.remove(users.get(i));
			}
		}
		return users;

	}

	@Override
	public void update(Long idUser, String nomphoto, byte[] photo, Date date) {
		User user = IUserDAO.findOne(idUser);
		user.setIdUser(idUser);
		user.setNomPhoto(nomphoto);
		user.setPhoto(photo);
		IUserDAO.save(user);
		Activity Activity = new Activity();
		int day = date.getDate();
		int month = date.getMonth() + 1;
		Activity.setDay(day);
		Activity.setDescription("Votre photo a été changée avec succès");
		if (month == 1) {

			Activity.setMonth("Janvier");
		}
		if (month == 2) {

			Activity.setMonth("F�vrier");
		}
		if (month == 3) {

			Activity.setMonth("Mars");
		}
		if (month == 4) {

			Activity.setMonth("Avril");
		}
		if (month == 5) {

			Activity.setMonth("Mai");
		}
		if (month == 6) {

			Activity.setMonth("Juin");
		}
		if (month == 7) {

			Activity.setMonth("Juillet");
		}
		if (month == 8) {

			Activity.setMonth("Aout");
		}
		if (month == 9) {

			Activity.setMonth("Septembre");
		}
		if (month == 10) {

			Activity.setMonth("Octobre");
		}
		if (month == 11) {

			Activity.setMonth("Novembre");
		}
		if (month == 12) {

			Activity.setMonth("D�cembre");
		}
		Activity.setUser(user);
		IActivityDAO.save(Activity);

	}

	@Override
	public void update(Long idUser, String username, String password,
			String email, Date date) {
		User u = IUserDAO.findOne(idUser);
		u.setUsername(username);
		u.setEmail(email);

		ShaPasswordEncoder sha = new ShaPasswordEncoder(256);
		sha.setEncodeHashAsBase64(false);
		String hash = sha.encodePassword(password, null);
		u.setPassword(hash);
		IUserDAO.save(u);
		Activity Activity = new Activity();
		int day = date.getDate();
		int month = date.getMonth() + 1;
		Activity.setDay(day);
		Activity.setDescription("Votre profile a été changée avec succès ");
		if (month == 1) {

			Activity.setMonth("Janvier");
		}
		if (month == 2) {

			Activity.setMonth("F�vrier");
		}
		if (month == 3) {

			Activity.setMonth("Mars");
		}
		if (month == 4) {

			Activity.setMonth("Avril");
		}
		if (month == 5) {

			Activity.setMonth("Mai");
		}
		if (month == 6) {

			Activity.setMonth("Juin");
		}
		if (month == 7) {

			Activity.setMonth("Juillet");
		}
		if (month == 8) {

			Activity.setMonth("Aout");
		}
		if (month == 9) {

			Activity.setMonth("Septembre");
		}
		if (month == 10) {

			Activity.setMonth("Octobre");
		}
		if (month == 11) {

			Activity.setMonth("Novembre");
		}
		if (month == 12) {

			Activity.setMonth("D�cembre");
		}
		Activity.setUser(u);
		IActivityDAO.save(Activity);

	}

	@Override
	public String saveUser(String role, String username, String password,
			String email, String adresse, String nomphoto, byte[] photo,
			String[] skills, String phone) {
		ShaPasswordEncoder sha = new ShaPasswordEncoder(256);
		sha.setEncodeHashAsBase64(false);
		String hash = sha.encodePassword(password, null);
		User user = new User();
		user.setUsername(username);
		user.setAdresse(adresse);
		user.setPassword(hash);
		user.setEmail(email);
		user.setNomPhoto(nomphoto);
		user.setPhoto(photo);
		user.setActived(true);
		user.setPhone(phone);
		IUserDAO.save(user);
		user = IUserDAO.findOne(user.getIdUser());
		if (role.equals("Admin")) {

			Role role1 = new Role("ROLE_ADMIN", user);
			IRoleDAO.save(role1);

		} else if (role.equals("Dev")) {
			Role role1 = new Role("ROLE_DEV", user);
			IRoleDAO.save(role1);

		}

		for (int i = 0; i < skills.length; i++) {
			Skills Skills = new Skills();
			Skills.setNomSkills(skills[i]);
			Skills.setUser(user);
			ISkillsDAO.save(Skills);
		}
		return "user/user";

	}

	@Override
	public void update(long idUser, String roles, String username,
			String password, String email, String adresse, String nomphoto,
			byte[] photo, String[] skills, String Phone) {
		User user = IUserDAO.findOne(idUser);

		user.setNomPhoto(nomphoto);
		user.setPhoto(photo);
		user.setUsername(username);
		user.setEmail(email);
		user.setAdresse(adresse);
		user.setPhone(Phone);

		ShaPasswordEncoder sha = new ShaPasswordEncoder(256);
		sha.setEncodeHashAsBase64(false);
		String hash = sha.encodePassword(password, null);
		user.setPassword(hash);
		IUserDAO.save(user);
		Role role = IRoleDAO.findByuser(user);

		if (roles.equals("Admin")) {

			role.setNomRole("ROLE_ADMIN");
			role.setUser(user);
			IRoleDAO.save(role);

		} else if (roles.equals("Dev")) {
			role.setNomRole("ROLE_DEV");
			role.setUser(user);
			IRoleDAO.save(role);

		}
		List<Skills> Skill = ISkillsDAO.findByuser(user);

		for (int i = 0; i < Skill.size(); i++) {

			ISkillsDAO.delete(Skill);
		}
		for (int i = 0; i < skills.length; i++) {
			Skills Skills = new Skills();
			Skills.setNomSkills(skills[i]);
			Skills.setUser(user);
			ISkillsDAO.save(Skills);
		}

	}

	@Override
	public List<User> find_User_Agent() {
		List<User> Users = new ArrayList<User>();
		List<User> User = IUserDAO.findAll();
		List<Role> Role = IRoleDAO.findAll();
		for (int i = 0; i < User.size(); i++) {
			for (int j = 0; j < Role.size(); j++) {
				if ((User.get(i).getIdUser() == Role.get(j).getUser().getIdUser())
						&& Role.get(j).getNomRole().equals("ROLE_DEV")) {
					Users.add(User.get(i));
				}
			}
		}
		return Users;
	}

}
