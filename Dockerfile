FROM openjdk:8-jre-alpine
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' >/etc/timezone
EXPOSE 8035
VOLUME /dubbo
WORKDIR /dubbo
# java启动参数，指定启动的jar名称
ENV PARAMS="dubbo.jar"
ENTRYPOINT  java -Djava.security.egd=file:/dev/./urandom -Duser.timezone=GMT+08 -jar /dubbo/$PARAMS
