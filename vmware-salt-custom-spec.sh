#!/bin/sh
if [ x$1 = x"precustomization" ]; then
echo Do Precustomization tasks
elif [ x$1 = x"postcustomization" ]; then
#echo "saltenv: base" >> /etc/salt/minion
systemctl start salt-minion.service
sleep 30
systemctl enable salt-minion.service
fi
