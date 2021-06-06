FROM ubuntu

RUN apt update

COPY projCert-master /home/

RUN apt install -y wget

RUN cd /home/ && wget https://www.apachefriends.org/xampp-files/8.0.3/xampp-linux-x64-8.0.3-0-installer.run

RUN cd /home/ && chmod 755 xampp-linux-x64-8.0.3-0-installer.run

RUN apt update

RUN cd /home/ && echo "Y Y Y" | ./xampp-linux-x64-8.0.3-0-installer.run

RUN chmod 777 /opt/lampp/htdocs/

RUN cd /home/ && cp -r website /opt/lampp/htdocs/

RUN cd /home/ && rm xampp-linux-x64-8.0.3-0-installer.run

CMD /opt/lampp/lampp start



