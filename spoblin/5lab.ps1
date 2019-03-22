$url = "www.logitech.com"


$Network = Get-WmiObject Win32_NetworkAdapterConfiguration | ? {$_.IPEnabled}
$IPAddress  = $Network.IpAddress[0]
$SubnetMask  = $Network.IPSubnet
$DefaultGateway = $Network.DefaultIPGateway
$DNSServers  = $Network.DNSServerSearchOrder
$MACAddress  = $Network.MACAddress
$DHCPServer  = $Network.DHCPServer


"Task #1" | Out-File result.txt
"IPAddress: " | Out-File result.txt -Append -NoNewline
$IPAddress| Out-File result.txt -Append
"SubnetMask: " | Out-File result.txt -Append -NoNewline
$SubnetMask | Out-File result.txt -Append
"DefaultGateway: " | Out-File result.txt -Append -NoNewline
$DefaultGateway | Out-File result.txt -Append

"`nTask #2" | Out-File result.txt -Append
"MAC Addrees: " | Out-File result.txt -Append -NoNewline
$MACAddress | Out-File result.txt -Append

"`nTask #3" | Out-File result.txt -Append
$DNSServers | Out-File result.txt -Append
Test-Connection $DHCPServer | Out-File result.txt -Append

"`nTask #4" | Out-File result.txt -Append
"DefaultGateway: " | Out-File result.txt -Append
Test-Connection $DefaultGateway | Out-File result.txt -Append
"URL: " | Out-File result.txt -Append
Test-Connection $url | Out-File result.txt -Append

"`nTask #5" | Out-File result.txt -Append
& "C:\Program Files\WindowsPowerShell\Scripts\Speedtest.ps1" | Out-File result.txt -Append

"`nTask #6" | Out-File result.txt -Append
ping -n 1 -r 3 $url| Out-File result.txt -Append

"`nTask #7" | Out-File result.txt -Append
tracert yandex.ru| Out-File result.txt -Append

"`nTask #8" | Out-File result.txt -Append
pathping $url| Out-File result.txt -Append

"`nTask #9" | Out-File result.txt -Append
arp -a | Out-File result.txt -Append

"`nTask #10" | Out-File result.txt -Append
netstat | Out-File result.txt -Append

"`nTask #10" | Out-File result.txt -Append
ping $url -f -l 1472 | Out-File result.txt -Append






