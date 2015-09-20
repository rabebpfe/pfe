package pfe.com.tunisie.service.Imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pfe.com.tunisie.dao.IRoleDAO;
import pfe.com.tunisie.entities.Role;
import pfe.com.tunisie.service.IRoleMetier;

@Transactional
@Service
public class RoleMetierImp implements IRoleMetier {
	@Autowired
	private IRoleDAO IRoleDAO;

	@Override
	public void save(Role Role) {
		IRoleDAO.save(Role);
		
	}

	@Override
	public Role findOne(Long idRole) {
		
		return IRoleDAO.findOne(idRole);
	}

	@Override
	public void delete(Long idRole) {
		IRoleDAO.delete(idRole);
		
	}

	@Override
	public List<Role> findAll() {
		
		return IRoleDAO.findAll();
	}

	
		
	

	
}
