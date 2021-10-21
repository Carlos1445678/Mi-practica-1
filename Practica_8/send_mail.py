from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
import smtplib
import json
import getpass
from email.mime.base import MIMEBase
usuario= input("Ingrese su nombre de usuario:")
contraseña=getpass.getpass("Ingrese su  contraseña:")
destinatario = input("Ingrese el correo del destinatario: ")
asunto = input("Ingrese el asunto:")
mensaje=input("Ingrese el mensaje a mandar:")
mensaje="Subject: {}\n\n{}".format(asunto,mensaje)
# create and setup the parameters of the message
email_msg = MIMEMultipart()
email_msg["From"] =usuario
email_msg["To"] = destinatario
email_msg["Subject"] = asunto


email_msg.attach(MIMEText(asunto, "plain"))
# add in the message body
email_msg.attach(MIMEText(mensaje, "plain"))

# create server
server = smtplib.SMTP("smtp.office365.com:587")
server.starttls()
# Login Credentials for sending the mail
server.login(usuario,contraseña)


# send the message via the server.
server.sendmail(usuario,destinatario,mensaje)
server.quit()
print("successfully sent email to %s:" % (email_msg["To"]))
