package pfe.com.tunisie.service;
import java.util.*;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

import com.twilio.sdk.*;
import com.twilio.sdk.resource.factory.*;
import com.twilio.sdk.resource.instance.*;
import com.twilio.sdk.resource.list.*;

public class TwilioTest {
	// Find your Account Sid and Token at twilio.com/user/account
	public static final String ACCOUNT_SID = "ACeabfa92df506dce47a896e59b4e6e05b";
			
	public static final String AUTH_TOKEN = "667f381b077d17bf47be705792cac327";

	public static void main(String[] args) throws TwilioRestException {
		TwilioRestClient client = new TwilioRestClient(ACCOUNT_SID, AUTH_TOKEN);

		// Build the parameters

		Account account = client.getAccount();

		MessageFactory messageFactory = account.getMessageFactory();
		String num = "27620500";
		List<NameValuePair> params = new ArrayList<NameValuePair>();
		params.add(new BasicNameValuePair("To", "+216" +num));

		params.add(new BasicNameValuePair("From", "+16466635714"));
		params.add(new BasicNameValuePair("Body", "Hello Tunisie "));
		Message sms;
		try {
			sms = messageFactory.create(params);
			System.out.println(sms.getSid());
		} catch (TwilioRestException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
