

package pfe.com.tunisie.SendSMS;

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

public class SampleSMS implements Job{

	
	public static final String ACCOUNT_SID = "AC07ba3ec24b4a62b6366215826458e933";

	public static final String AUTH_TOKEN = "d3dedc8fc3f803a3463fa7021f9d99ce";
    @Autowired
	private ITaskDAO ITaskDAO;
    @Autowired
  	private IUserDAO IUserDAO;
	
    @Override
	public void execute(JobExecutionContext arg0) throws JobExecutionException {
 
    	System.out.println("TEST SMS");
		
		String format = "yyyy-MM-dd "; 

		java.text.SimpleDateFormat formater = new java.text.SimpleDateFormat( format ); 
	
		List<Task> Tasks = ITaskDAO.findAll();
		
		
		java.util.Date date = new java.util.Date();
		

	
		for (int i = 0; i < Tasks.size(); i++) {
			
			if ( formater.format( date ).equals( formater.format(Tasks.get(i).getDate())) ) {
			
				
				Long idUser=Tasks.get(i).getUser();
				User user=IUserDAO.findOne(idUser);
				TwilioRestClient client = new TwilioRestClient(ACCOUNT_SID, AUTH_TOKEN);
                Account account = client.getAccount();

				MessageFactory messageFactory = account.getMessageFactory();
				String num = user.getPhone();
				List<NameValuePair> params = new ArrayList<NameValuePair>();
				params.add(new BasicNameValuePair("To", "+216" +num));

				params.add(new BasicNameValuePair("From", "+14155992671"));
				params.add(new BasicNameValuePair("Body", "Bonjour  "+user.getUsername()+", il fout rendre le travail de votre tache intitulé "+Tasks.get(i).getNom()+ "avant le "+Tasks.get(i).getDate()));
				Message sms;
    					System.out.println("Msg envoyé pour le numéro  "+user.getPhone());
    					System.out.println("Bonjour  "+user.getUsername()+", il fout rendre le travail de votre tâche intitulé "+Tasks.get(i).getNom()+ "avant le "+Tasks.get(i).getDate());
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


