package pfe.com.tunisie.service.Imp;

import java.util.*;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pfe.com.tunisie.entities.Task;
import pfe.com.tunisie.entities.User;
import pfe.com.tunisie.dao.ITaskDAO;
import pfe.com.tunisie.dao.IUserDAO;
import com.twilio.sdk.*;
import com.twilio.sdk.resource.factory.*;
import com.twilio.sdk.resource.instance.*;

@Service
@Transactional
public class SampleSMS implements Job {

	public static final String ACCOUNT_SID = "ACe46f6c7ca1e3f35c05390a3ad4de58c1";
	public static final String AUTH_TOKEN = "a6b84bc2636af0c2628d73c21495e463";
	@Autowired
	private ITaskDAO ITaskDAO;
	@Autowired
	private IUserDAO IUserDAO;

	@Override
	public void execute(JobExecutionContext arg0) throws JobExecutionException {

		System.out.println("TEST SMS");

		String format = "yyyy-MM-dd ";

		java.text.SimpleDateFormat formater = new java.text.SimpleDateFormat(
				format);

		List<Task> Tasks = ITaskDAO.findAll();

		java.util.Date date = new java.util.Date();

		for (int i = 0; i < Tasks.size(); i++) {

			if (formater.format(date).equals(
					formater.format(Tasks.get(i).getDate()))
					&& (Tasks.get(i).getStatus().equals("Code Review")
							|| Tasks.get(i).getStatus().equals("IN progress")
							|| Tasks.get(i).getStatus().equals("Open"))) {

				Long idUser = Tasks.get(i).getUser();
				User user = IUserDAO.findOne(idUser);
				TwilioRestClient client = new TwilioRestClient(ACCOUNT_SID,
						AUTH_TOKEN);
				Account account = client.getAccount();

				MessageFactory messageFactory = account.getMessageFactory();
				String num = user.getPhone();
				List<NameValuePair> params = new ArrayList<NameValuePair>();
				params.add(new BasicNameValuePair("To", "+216" + num));

				params.add(new BasicNameValuePair("From", "+14155992671"));
				params.add(new BasicNameValuePair(
						"Body",
						"Bonjour  "
								+ user.getUsername()
								+ ", il fout rendre le travail de votre tâche intitulé "
								+ Tasks.get(i).getNom() +" "+ "avant le "
								+ Tasks.get(i).getDate()));
				Message sms;
				System.out.println("Msg envoyé pour le numéro  "
						+ user.getPhone());
				System.out
						.println("Bonjour  "
								+ user.getUsername()+ " "
								+ ", il fout rendre le travail de votre tâche intitulé "
								+ Tasks.get(i).getNom() +"  "+"avant le "+
								" "
								+ Tasks.get(i).getDate());
				try {
					sms = messageFactory.create(params);
					System.out.println(sms.getSid());
				} catch (TwilioRestException e) {

					e.printStackTrace();
				}
			}
		}

	}
}
