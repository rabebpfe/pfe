package pfe.com.tunisie.service.Imp;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pfe.com.tunisie.dao.ISkillsDAO;
import pfe.com.tunisie.dao.IUserDAO;
import pfe.com.tunisie.entities.Skills;
import pfe.com.tunisie.service.ISkillsMetier;

@Transactional
@Service
public class SkillsMetierImp implements ISkillsMetier {
	@Autowired
	private ISkillsDAO ISkillsDAO;
	@Autowired
	private IUserDAO IUserDAO;

	@Override
	public void save(Skills user) {
		ISkillsDAO.save(user);

	}

	@Override
	public Skills findOne(Long idSkills) {

		return ISkillsDAO.findOne(idSkills);
	}

	@Override
	public void delete(Long idSkills) {
		ISkillsDAO.delete(idSkills);

	}

	@Override
	public List<Skills> findAll() {
		return ISkillsDAO.findAll();
	}

	@Override
	public List<Skills> findByIdUser(Long idUser) {
		List<Skills> Skills = new ArrayList<Skills>();
		List<Skills> Skill = ISkillsDAO.findAll();

		for (int i = 0; i < Skill.size(); i++) {
			if (Skill.get(i).getUser().getIdUser() == idUser) {
				Skills.add(Skill.get(i));
			}
		}
		return Skills;
	}

}
