set url=www.logitech.com


echo "1" >> a.txt

ipconfig | find "IPv4" >>  a.txt
ipconfig | find "Subnet" >> a.txt
ipconfig | find "Default Gateway" >> a.txt

echo "2"  >> a.txt

wmic path Win32_NetworkAdapter get name, MacAddress  >> a.txt

echo "3" >> a.txt

nslookup %url%  >> a.txt

echo "4"  >> a.txt

ping %url%

echo "6"  >> a.txt

ping -n 1 -r 3 %url% >> a.txt

echo "7"  >> a.txt

tracert %url% >> a.txt

echo "8"  >> a.txt
pathping %url% -w 1000 >> a.txt

echo "9"  >> a.txt
ARP -a  >> a.txt

echo "10"  >> a.txt

netstat -a >> a.txt

echo "11"
ping %url% -f -l 1472 >> a.txt

echo












