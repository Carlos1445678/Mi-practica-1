$codi= Get-NetIPAddress -AddressFamily IPV4
$codi=[System.Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes("$codi")) 
$codi
powershell -encodedcommand $codi
 #Ejecutar el codigo en base 64
$code=Invoke-WebRequest ifconfig.me
$code=[System.Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes("$code")) 
$code 
powershell -encodedcommand $code
#NMAP
$nmap=nmap localhost
$nmap=[System.Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes("$nmap")) 
$nmap
powershell -encodedcommand $nmap
#Peticion a una ip publica
$nnmap= nmap --script=http-auth-finder www.instagram.com
$nnmap=[System.Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes("$nnmap")) 
$nnmap
powershell -encodedcommand $nmap
Set-Content practica61.txt  -value $codi 
Set-Content practica63.txt  -value $code
Set-Content practica62.txt  -value $nmap
Set-Content practica6.txt -value $nnmap


$EmailPropio = "email propio";
$EmailDestino = "email del destinatario";
$Asunto = "Asunto"
$Texto = "Texto a poner "
$ServidorSMTP = "smtp.gmail.com"
$Archivo1 = "archivo adjunto a mandar"
$Mensaje = New-Object System.Net.Mail.MailMessage
$Mensaje.From = $EmailPropio
$Mensaje.To.Add($EmailDestino)
$Mensaje.IsBodyHtml = $True
$Mensaje.Subject = $Asunto
$Mensaje.Body = $Texto
$Adjunto1 = New-Object Net.Mail.Attachment($Archivo1)
$Mensaje.Attachments.Add($Adjunto1)
$ClienteSMTP = New-Object Net.Mail.SmtpClient($ServidorSMTP, 587)
$ClienteSMTP.EnableSsl = $true
$ClienteSMTP.Credentials = New-Object System.Net.NetworkCredential("EmailPropio@gmail.com", "Password propio");
$ClienteSMTP.Send($Mensaje)

Write-Host "Se mando con Exito" 