#!/bin/bash
export PATH=/root/.local/bin:/root/bin:/usr/share/Modules/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin

groupadd -g 10000 STAFF
groupadd -g 20000 STUDENT
groupadd -g 10001 CLASS101
groupadd -g 10002 CLASS102
groupadd -g 10003 CLASS103

groupadd -g 30000 UNIVERSITY


sleep 2
useradd -c "STAFF TONY" -d /home/tony -g  UNIVERSITY  -s /bin/bash -m tony
useradd -c "STAFF MIKE" -d /home/mike -g  UNIVERSITY -s /bin/bash -m mike

passwd -x 90 -n 7 -w 14  tony
passwd -x 90 -n 7 -w 14  mike


useradd -c "STUDENT LARRY" -d /home/larry -g  UNIVERSITY -s /bin/bash -m larry
useradd -c "STUDENT MOE" -d /home/moe -g  UNIVERSITY -s /bin/bash -m moe
useradd -c "STUDENT CURLY" -d /home/curly -g  UNIVERSITY -s /bin/bash -m curly

passwd -x 365 -n 31 -w 30 larry
passwd -x 365 -n 31 -w 30 moe
passwd -x 365 -n 31 -w 30 curly

usermod -G STUDENT curly
usermod -G STUDENT moe
usermod -G STUDENT larry
usermod -G STAFF tony
usermod -G STAFF mike


mkdir -p /opt/UNIVERSITY
chown root:UNIVERSITY /opt/UNIVERSITY
chmod 770 /opt/UNIVERSITY


