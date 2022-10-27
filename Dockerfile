FROM ppodgorsek/robot-framework

USER root

RUN python3 -m pip install python-decouple
RUN dnf install cronie -y

COPY crontab /tmp/crontab
RUN crontab /tmp/crontab
RUN touch out.txt

CMD ["/bin/sh", "-c", "printenv > /etc/environment && crond && tail -f /opt/robotframework/temp/out.txt"]