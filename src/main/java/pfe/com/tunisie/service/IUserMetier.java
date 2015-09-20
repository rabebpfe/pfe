package pfe.com.tunisie.service;


import java.util.List;



import pfe.com.tunisie.entities.User;

public interface IUserMetier {
	public void save(User user);

	public User findOne(Long idUser);

	public void delete(Long idUser);

	public List<User> findAll();

	public String getNewPassword(String email);

	public String  saveUser(String roles, String username, String password,
			String email, String adresse, String nomphoto, byte[] photo,
			String[] skills);

	public Long findByusername(String username);

	public void update(Long idUser, String username, String password,
			String email);

	public void update(Long idUser, String nomphoto, byte[] photo);

	

	public void update(long idUser, String roles, String username, String password,
			String email, String adresse, String nomphoto, byte[] photo,
			String[] parameterValues);

	public List<User>   useredit(Long idUser);



}
