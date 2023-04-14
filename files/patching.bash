#/bin/bash
for i in `dnf list updates --security -q | grep -v Available| grep -v sudo|grep -v openssl | awk '{print $1}'`;do
dnf update $i -y
done

/usr/bin/insights-client