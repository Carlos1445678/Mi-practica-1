$Dns= Get-DnsClientCache
$Dns=[System.Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes("$Dns")) 
$Dns
powershell -encodedcommand $Dns
Set-Content practicaDns.txt  -value $Dns 