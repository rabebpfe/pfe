package pfe.com.tunisie.service;

import java.util.List;


import pfe.com.tunisie.entities.Role;


public interface IRoleMetier {
	public void save(Role Role);

	public Role findOne(Long idRole);

	public void delete(Long idRole);

	public List<Role> findAll();

   
}
