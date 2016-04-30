#!/bin/sh

# [ "${C9USERID}" != "" ] && [ "{C9GROUPID}" != "" ] && sed -i "s/cloud9:x:[0-9]*:[0-9]*:/cloud9:x:${C9USERID}:${C9GROUPID}:/" /etc/passwd
[ "${C9USERID}" != "" ] && sed -i "s/cloud9:x:[0-9]*:/cloud9:x:${C9USERID}:/" /etc/passwd
sed -i "s/cloud9:c9passwd/${C9USERNAME}:${C9PASSWORD}/" /etc/supervisor/conf.d/cloud9.conf

supervisord -c /etc/supervisor/supervisord.conf
