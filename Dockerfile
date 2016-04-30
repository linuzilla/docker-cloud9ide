FROM linuzilla/ubuntu1604-cloud9base
MAINTAINER Mac Liu <linuzilla@gmail.com>

COPY files/run.sh /run.sh
RUN chmod +x /run.sh

ENV C9USERID 1000
#ENV C9GROUPID 1000
ENV C9USERNAME cloud9
ENV C9PASSWORD c9ide-password

EXPOSE 8181
VOLUME [ "/workspace" ]

CMD [ "/run.sh" ]
