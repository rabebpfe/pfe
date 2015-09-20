package pfe.com.tunisie.service;

import java.util.List;
import pfe.com.tunisie.entities.Skills;

public interface ISkillsMetier {
	public void save(Skills user);

	public Skills findOne(Long idSkills);

	public void delete(Long idSkills);

	public List<Skills> findAll();

	public List<Skills> findByIdUser(Long idUser);

}
