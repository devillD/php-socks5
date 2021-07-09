FROM ubuntu:20.04
 
RUN mkdir /BOT
RUN chmod 777 /BOT
WORKDIR /BOT

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Dhaka

RUN apt-get -qq update -y

RUN apt-get -qq install -y php bash apache2

COPY . .
RUN chmod +x start.sh

EXPOSE 1080

CMD ["bash", "start.sh"]
