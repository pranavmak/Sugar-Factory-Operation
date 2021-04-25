<%-- 
    Document   : mailmessage
    Created on : 23 Mar, 2021, 2:56:04 PM
    Author     : pranavmak
--%>

<%@ page import="java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*" %>
 <body bgcolor="#008891">
<%

    //Creating a result for getting status that messsage is delivered or not!

    String result;

    // Get recipient's email-ID, message & subject-line from index.html page

    final String to = request.getParameter("mail");

    final String subject = request.getParameter("sub");

    final String messg = request.getParameter("mess");

 

    // Sender's email ID and password needs to be mentioned

    final String from = "yourgamil@gmail.com";

    final String pass = "Password";

 

    // Defining the gmail host

    String host = "smtp.gmail.com";//all mail sent by using this 

 

    // Creating Properties object

    Properties props = new Properties();

 

    // Defining properties

    props.put("mail.smtp.host", host);

    props.put("mail.transport.protocol", "smtp");//thorught transport protocol mail gonna be sent

    props.put("mail.smtp.auth", "true");//authorize the given password username

    props.put("mail.smtp.starttls.enable", "true");//password hs enabled

    props.put("mail.user", from);// from konakdun

    props.put("mail.password", pass);///declared passsss

    props.put("mail.port", "443");//port through msg goes

 

    // Authorized the Session object.

    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {

        @Override

        protected PasswordAuthentication getPasswordAuthentication() {

            return new PasswordAuthentication(from, pass);

        }

    });

 

    try {

        // Create a default MimeMessage object.

        MimeMessage message = new MimeMessage(mailSession);

        // Set From: header field of the header.

        message.setFrom(new InternetAddress(from));

        // Set To: header field of the header.

        message.addRecipient(Message.RecipientType.TO,

                new InternetAddress(to));

        // Set Subject: header field

        message.setSubject(subject);

        // Now set the actual message

        message.setText(messg);

        // Send message

        Transport.send(message);

        result = "Your mail sent successfully....";

    } catch (MessagingException mex) {

        mex.printStackTrace();

        result = "Error: unable to send mail....";

    }

%>
<>
<title>Sending Mail in JSP</title>

<h1><center><font color="white">Sending Your Mail</font></h1>

<b><center><font color="yellow"><% out.println(result);%></b>
        </body>