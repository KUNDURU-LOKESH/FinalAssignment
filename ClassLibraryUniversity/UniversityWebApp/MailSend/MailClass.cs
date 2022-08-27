using MailKit.Net.Smtp;
using MimeKit;

namespace UniversityWebApp.MailSend
{
    public class MailClass
    {
        public void SendMailMethod(string recieverMail,string url)
        {
            MimeMessage message = new MimeMessage();
            message.From.Add(new MailboxAddress("University Registration", "kundurulokesh123654@gmail.com"));
            message.To.Add(MailboxAddress.Parse(recieverMail));

            message.Subject = "!!!Welcome!!!";
            message.Body = new TextPart("html")
            {
                Text = $"<p>Dear {recieverMail}, Thanks for registering with Please login using <a href={url}>Login</a></p>",
            };

            #region private data
            string email = "kundurulokesh123654@gmail.com";
            string password = "glcpdbrugbqjlwbe";
            #endregion

            SmtpClient smtpClient = new SmtpClient();
            try
            {
                smtpClient.Connect("smtp.gmail.com", 465, true);
                smtpClient.Authenticate(email, password);
                smtpClient.Send(message);
                Console.WriteLine($"!!Thanks dear {recieverMail} for registration with us!!");
                Console.WriteLine($"A 'Welcome Message' is just sent to your registered mail id from '{email}'");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                smtpClient.Disconnect(true);
                smtpClient.Dispose();
            }
        }
    }
}
