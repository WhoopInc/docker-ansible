#!/bin/sh

eval `ssh-agent -s` > /dev/null 2>&1

for key in `ls /ssh/*_rsa`
do
  ssh-add ${key} > /dev/null 2>&1
done

exec "$@"
/ # cat ansible.cfg
[defaults]
host_key_checking=False
/ # cat run.sh
#!/bin/sh

eval `ssh-agent -s` > /dev/null 2>&1

for key in `ls /ssh/*_rsa`
do
  ssh-add ${key} > /dev/null 2>&1
done

exec "$@"
