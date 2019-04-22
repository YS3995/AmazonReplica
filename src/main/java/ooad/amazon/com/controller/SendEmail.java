package ooad.amazon.com.controller;

//Java program to send email 

import java.util.*; 
import javax.mail.*; 
import javax.mail.internet.*;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.activation.*; 
import javax.mail.Session; 
import javax.mail.Transport; 

@Path("/mailServices")
public class SendEmail  
{ 
	@Path("/sendMail/{email}")
	@GET
	@Produces(MediaType.TEXT_PLAIN)
	public void sendMail(@PathParam("email") String email)
	{     
	   // email ID of Recipient. 
	   String recipient = "teegalasarika27@gmail.com"; 
	
	   // email ID of  Sender. 
	   String sender = "Yaminisharma.3995.ys@gmail.com"; 
	
	   // using host as localhost 
	   String host = "127.0.0.1"; 
	
	   // Getting system properties 
	   Properties properties = new Properties(); 
	
	   // Setting up mail server 
	   //properties.setProperty("mail.host", "smtp.gmail.com");
	   properties.put("mail.smtp.auth", "true");
	   properties.put("mail.smtp.starttls.enable", "true");
	   properties.put("mail.smtp.host", "smtp.gmail.com");
	   properties.put("mail.smtp.port", "587");
	   properties.put("mail.smtp.socketFactory.port", "587");
	
	   // creating session object to get properties 
	   Session session = Session.getDefaultInstance(properties, new javax.mail.Authenticator() {
		   protected PasswordAuthentication getPasswordAuthentication() {
			   return new PasswordAuthentication(sender, "twprdwzljxiltqlv");
		   }
	   }); 
	
	   try 
	   { 
	      // MimeMessage object. 
	      MimeMessage message = new MimeMessage(session); 
	
	      // Set From Field: adding senders email to from field. 
	      message.setFrom(new InternetAddress(sender)); 
	
	      // Set To Field: adding recipient's email to from field. 
	      message.addRecipient(Message.RecipientType.TO, new InternetAddress(recipient)); 
	
	      // Set Subject: subject of the email 
	      message.setSubject("Reset Password Link For Amazon."); 
	
	      // set body of the email. 
	      message.setText("The link to reset password provided below\n" + "http://localhost:8055/amazon.com/updatePass.jsp"); 
	
	      // Send email. 
	      Transport.send(message); 
	      System.out.println("Mail successfully sent"); 
	   } 
	   catch (MessagingException mex)  
	   { 
	      mex.printStackTrace(); 
	   } 
	}
}
