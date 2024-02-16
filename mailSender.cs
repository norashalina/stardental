using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using DocumentFormat.OpenXml.Wordprocessing;
using System.Net;
using DocumentFormat.OpenXml.Spreadsheet;

namespace Star
{
    public class mailSender
    {

        public static void Mailsender(String mailTo, String MailSubject, String Mailbody)
        {
            using (MailMessage mm = new MailMessage("admn.stardental@gmail.com", mailTo))
            {
                mm.Subject = MailSubject;
                mm.Body = Mailbody;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.UseDefaultCredentials = false;
                NetworkCredential networkCredential = new NetworkCredential("admn.stardental@gmail.com", "ttysfzbxxguhnxbu");
                smtp.Credentials = networkCredential;
                smtp.EnableSsl = true;
                smtp.Port = 587;
                smtp.Send(mm);
                //smtpClient.Credentials = new NetworkCredential("admn.stardental@gmail.com", "St@rd3nt4l");
                //smtpClient.Credentials = new NetworkCredential("admn.stardental@gmail.com", "ttysfzbxxguhnxbu");
                //smtpClient.UseDefaultCredentials = false;
                //smtpClient.EnableSsl = true;
                //smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;

                //using (MailMessage mail = new MailMessage())
                //{
                //    // Setting From, To, and CC
                //    mail.From = new MailAddress("admn.stardental@gmail.com", "Appointment Dental");
                //    mail.To.Add(new MailAddress(mailTo));
                //    mail.Subject = MailSubject;
                //    mail.Body = Mailbody;

                //    smtpClient.Send(mail);
                //}

            }
        }
    }
}