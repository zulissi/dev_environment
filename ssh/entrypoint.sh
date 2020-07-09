#!/bin/bash

if [ ! -d "/home/zulissi/.ssh/" ] 
then 
    runuser -l zulissi -c 'ssh-keygen -t rsa -N ""'
    runuser -l zulissi -c 'echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCm3atkkQWfOGgh5MCY+P8DiIOdRr8ENAKhW7vtPKfloL9yAa+eHlUujPdAMSHJiXArrLri3XkX1SdrkY/wrGaO5LvXw+UPsbpcsKrcUcLFYVkYiy+GTx9xKJbLL6dIEkKORXWhjPf6Ur5GZBqAgvhFHSONZ1lrxFQepdkttFuFGp/SW/p7+scC/qU51RxccXJb4f1kSo4bMwUWCanSAFCl5iLnDzQyEXZhEQJoMSvS5bSkt/M4xjEAmuW+K0af+An4NDWxzLFRFk1DfgHeFe7fUafC2lQPEwwlCJz70mHuW8fgLlEjusqtc3CoKckxmyzSMs0hXTAL4en8rAwm0qBndR57Kn2z5lrOcu/BGauBgVa7bpwkPk1Oq1lg0kV+aYu5IrCsVbrZTbnGcsoLZlXUDxmtV9AbD4gfneJp/T7p+0pPMRzS/+7uIEHAxay9KHQtqOKWKShaZ6egen38zw1oknIE6s7R6XegwVCwhy0ow+7I/XCK7HiWluVrsDj8cDkAbrBLVrLMVM1uiBiYZnDaW9Sh3Blb2+C/jdrsF3EsEisMpNXCGLxWwWOFCpuGHVdWDq/S9I8ppdBxzAXE59IXrySMa2uDLUfqnwiONk8uCT6sPuNOSW2rCrrlZjMmH9peW714/AVAd6v6jEx1aPE3EdVW5iVCFRcPATnfa6/7iw== zulissi@DESKTOP-4MTHLUP" >> /home/zulissi/.ssh/authorized_keys'
fi
