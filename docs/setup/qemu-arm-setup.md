\# EdgeDC ARM64 QEMU Development Environment



\## Purpose



Development and testing environment for EdgeDC before

deployment to physical 64-bit BeagleBone hardware.



\## Host Environment



Host OS: Windows

Emulator: QEMU

QEMU Version: 11.1.0



\## Emulated Platform



Architecture: ARM64 / AArch64

QEMU Machine: virt

vCPU: 2

RAM: 2 GB

Virtual Disk: 20 GB QCOW2



\## Operating System



Distribution: Debian

Version: 13.6

Architecture: ARM64

Hostname: edgedc01



\## Networking



Network Mode: QEMU user-mode NAT

Guest SSH Port: TCP/22

Host SSH Port: TCP/2222



Port Forwarding:



Windows localhost:2222 → EdgeDC:22



\## Starting EdgeDC



Run from the repository:



./scripts/start-edgedc.sh



\## SSH Access



ssh -p 2222 <username>@127.0.0.1



\## Validation



uname -m

dpkg --print-architecture

hostnamectl

ip addr

ip route

timedatectl

