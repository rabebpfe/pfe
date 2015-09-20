package pfe.com.tunisie.service.Imp;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.encoding.ShaPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pfe.com.tunisie.dao.ISkillsDAO;
import pfe.com.tunisie.dao.IUserDAO;
import pfe.com.tunisie.dao.IRoleDAO;
import pfe.com.tunisie.entities.Role;
import pfe.com.tunisie.entities.Skills;
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

	@Override
	public void saveUser(int role, String username, String password,
			String email, String adresse, String nomphoto, byte[] photo,
			String[] skills) {
		ShaPasswordEncoder sha = new ShaPasswordEncoder(256);
		sha.setEncodeHashAsBase64(false);
		String hash = sha.encodePassword(password, null);

		User user = new User();
		user.setUsername(username);
		user.setAdresse(adresse);
		user.setPassword(hash);
		user.setEmail(email);
		user.setPhoto(photo);
		user.setActived(true);

		IUserDAO.save(user);
		user = IUserDAO.findOne(user.getIdUser());
		if (role == 1) {

			Role role1 = new Role("ROLE_ADMIN",user);
			IRoleDAO.save(role1);
			

		} else if (role == 2) {
			Role role1 = new Role("ROLE_ADMIN",user);
			IRoleDAO.save(role1);

		} else if (role == 3) {
			Role role1 = new Role("ROLE_ADMIN",user);
			IRoleDAO.save(role1);

		}

		for (int i = 0; i < skills.length; i++) {
			Skills Skills = new Skills();
			Skills.setNomSkills(skills[i]);
			Skills.setUser(user);
			ISkillsDAO.save(Skills);
		}

	}

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
							+ " and password is:"+ pwd.toString());

			
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
	public void update(Long idUser, String username, String password,
			String email) {

		User u = IUserDAO.findOne(idUser);
		u.setUsername(username);
		u.setEmail(email);

		ShaPasswordEncoder sha = new ShaPasswordEncoder(256);
		sha.setEncodeHashAsBase64(false);
		String hash = sha.encodePassword(password, null);
		u.setPassword(hash);
        IUserDAO.save(u);
		
	}

	@Override
	public void update(Long idUser, String nomphoto, byte[] photo) {
		User user = IUserDAO.findOne(idUser);
		user.setIdUser(idUser);
		user.setNomPhoto(nomphoto);
		user.setPhoto(photo);
		IUserDAO.save(user);

	}

}
