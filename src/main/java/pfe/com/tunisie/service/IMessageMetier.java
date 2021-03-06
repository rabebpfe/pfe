package pfe.com.tunisie.service;

import java.util.Date;
import java.util.List;

import pfe.com.tunisie.entities.Message;

public interface IMessageMetier {
	public void save(Message message);

	public Message findOne(Long idMessage);

	public void delete(Long idMessage);

	public List<Message> findAll();

	public void send(String message, String subject, String to, Long idUser, Date date);

	public List<Message> findByIdUser(Long idUser);

    public List<Message> findAllByIdUser(Long idUser);

	public List<Message> findAllByCreate_By(Long idUser);

	public Message findReadByIdUser(Long idUser);

	public Message findReadByCreate_By(Long idUser);

}
