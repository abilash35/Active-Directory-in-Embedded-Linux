\# Samba 4 Installation on EdgeDC ARM64



\## Platform



\- Hostname: edgedc01

\- Architecture: ARM64 / AArch64

\- Operating System: Debian 13

\- Emulation Platform: QEMU ARM64



\## Samba Installation



Samba 4 and the required Active Directory components were

installed successfully on the EdgeDC ARM64 platform.



\## Validation



Architecture:



uname -m

Result: aarch64



Samba client:



smbclient --version

Result: Version 4.22.10



Samba AD DC daemon:



sudo samba --version

Result: Version 4.22.10



Samba daemon location:



/usr/sbin/samba



Samba administration tool:



which samba-tool

Result: /usr/bin/samba-tool



samba-tool --help

Result: Successful



\## Status



Samba 4 installation and ARM64 compatibility validated.



The platform is ready for Active Directory Domain Controller

provisioning.

