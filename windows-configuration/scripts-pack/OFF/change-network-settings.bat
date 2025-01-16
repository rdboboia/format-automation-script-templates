:: Not needed for most systems, but it is useful for machines that host servers.

:: Sets the title of the window
title Network Settings

:: Variables (can and should be changed if needed)
set targetStaticIp=192.168.1.128
set targetMask=255.255.255.0
set targetGateway=192.168.1.1

:: Sets a static local address
netsh interface ipv4 set address name="Ethernet" static %targetStaticIp% %targetMask% %targetGateway%

:: Sets the DNS to be the gateway (uses the DNS configured in the Router)
netsh interface ipv4 set dns name="Ethernet" static %targetGateway%