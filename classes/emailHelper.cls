Global class emailHelper {
 
  public static void sendEmail() {
  
  Contact con = new Contact();
  con = [Select id,name from Contact where Title = 'abc'];
  system.debug('\n\n@@@'+con);
  
  //New instance of a single email message
  Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
  
  // Who you are sending the email to
   mail.setTargetObjectId(con.id);
 
   // The email template ID used for the email
   mail.setTemplateId('00X90000001qw37');
           
   //mail.setWhatId(candidate);   
   mail.setBccSender(false);
   mail.setUseSignature(false);
   mail.setReplyTo('recruiting@acme.com');
   mail.setSenderDisplayName('HR Recruiting');
   mail.setSaveAsActivity(false); 
  
Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
 
} 
}