package pfe.com.tunisie.service.Imp;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pfe.com.tunisie.dao.ICommenteDAO;
import pfe.com.tunisie.dao.ITaskDAO;
import pfe.com.tunisie.dao.IUserDAO;
import pfe.com.tunisie.entities.Commente;
import pfe.com.tunisie.entities.Task;
import pfe.com.tunisie.entities.User;
import pfe.com.tunisie.service.ICommenteMetier;

@Transactional
@Service
public class CommenteMetierImp implements ICommenteMetier {
	@Autowired
	private ICommenteDAO ICommenteDAO;
	@Autowired
	private IUserDAO IUserDAO;
	@Autowired
	private ITaskDAO ITaskDAO;

	@Override
	public void save(Commente commente) {
		ICommenteDAO.save(commente);

	}

	@Override
	public Commente findOne(Long idCommente) {

		return ICommenteDAO.findOne(idCommente);
	}

	@Override
	public void delete(Long idCommente) {
		ICommenteDAO.delete(idCommente);

	}

	@Override
	public List<Commente> findAll() {

		return ICommenteDAO.findAll();
	}

	@Override
	public List<Commente> findByIdTask(Long idTask) {

		List<Commente> Commentes = new ArrayList<Commente>();
		List<Commente> Commente = ICommenteDAO.findAll();

		for (int i = 0; i < Commente.size(); i++) {
			if (Commente.get(i).getTask().getIdTask() == idTask) {
				Commentes.add(Commente.get(i));
			}
		}
		return Commentes;
	}

	@Override
	public void save(String description, long idTask, Long idUser, Date date) {
		Commente Commente = new Commente();
		Commente.setDescription(description);
		Task Task = ITaskDAO.findOne(idTask);
		Commente.setTask(Task);
		User user = IUserDAO.findOne(idUser);
		Commente.setUser(user);

		int day = date.getDate();
		int month = date.getMonth() + 1;
		
		if (month == 1) {
			Commente.setMonth("Janvier");
		}
		if (month == 2) {
			Commente.setMonth("F�vrier");
		}
		if (month == 3) {
			Commente.setMonth("Mars");
		}
		if (month == 4) {
			Commente.setMonth("Avril");
		}
		if (month == 5) {
			Commente.setMonth("Mai");
		}
		if (month == 6) {
			Commente.setMonth("Juin");
		}
		if (month == 7) {
			Commente.setMonth("Juillet");
		}
		if (month == 8) {
			Commente.setMonth("Aout");
		}
		if (month == 9) {
			Commente.setMonth("Septembre");
		}
		if (month == 10) {
			Commente.setMonth("Octobre");
		}
		if (month == 11) {
			Commente.setMonth("Novembre");
		}
		if (month == 12) {
			Commente.setMonth("D�cembre");
		}

		Commente.setDay(day);

		ICommenteDAO.save(Commente);
	}

	@Override
	public void update(long idCommente, String description, Date date) {

		System.out.println("**************edit commente ***************"+idCommente);
		Commente Commente=ICommenteDAO.findOne(idCommente);
		Commente.setDescription(description);
		int day = date.getDate();
		int month = date.getMonth() + 1;
		
		if (month == 1) {
			Commente.setMonth("Janvier");
		}
		if (month == 2) {
			Commente.setMonth("F�vrier");
		}
		if (month == 3) {
			Commente.setMonth("Mars");
		}
		if (month == 4) {
			Commente.setMonth("Avril");
		}
		if (month == 5) {
			Commente.setMonth("Mai");
		}
		if (month == 6) {
			Commente.setMonth("Juin");
		}
		if (month == 7) {
			Commente.setMonth("Juillet");
		}
		if (month == 8) {
			Commente.setMonth("Aout");
		}
		if (month == 9) {
			Commente.setMonth("Septembre");
		}
		if (month == 10) {
			Commente.setMonth("Octobre");
		}
		if (month == 11) {
			Commente.setMonth("Novembre");
		}
		if (month == 12) {
			Commente.setMonth("D�cembre");
		}

		Commente.setDay(day);

		ICommenteDAO.save(Commente);
		
		
	}

}
