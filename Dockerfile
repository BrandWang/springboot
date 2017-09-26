FROM  docker pull idasound/centos7-jdk8

MAINTAINER Brand Idasound "haowang@idasound.com"


ENV JAVA_OPTS              ""
ENV TIME_ZONE              Asia/Shanghai
ENV SPRING_PROFILES_ACTIVE test
ENV JAR_NAME               ju321-1.0.0.RELEASE.jar

VOLUME /tmp


RUN echo "$TIME_ZONE" > /etc/timezone

CMD ["/bin/sh", "-c", "java $JAVA_OPTS -jar /opt/deploy/$JAR_NAME  --spring.profiles.active=$SPRING_PROFILES_ACTIVE"]
