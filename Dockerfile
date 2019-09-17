# Container for developing in NodeJS 10.x at Holberton School

FROM holbertonschool/base-ubuntu-1404
MAINTAINER Guillaume Salva <guillaume@holbertonschool.com>

RUN apt-get update

RUN apt-get install -y curl wget git

RUN curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
RUN apt-get install -y nodejs

RUN npm install semistandard --global
RUN npm install request --global
RUN npm install base-64 --global
RUN npm install utf8 --global

RUN echo "export NODE_PATH=/usr/lib/node_modules" >> /root/.bashrc


ADD run.sh /tmp/run.sh
RUN chmod u+x /tmp/run.sh

# start run!
CMD ["./tmp/run.sh"]
