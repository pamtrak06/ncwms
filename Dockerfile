FROM tomcat:7-jre7
RUN apt-get update -y && apt-get install -y wget curl locate
RUN mkdir /ncwms
WORKDIR /ncwms
ADD LICENCE /
RUN wget http://tenet.dl.sourceforge.net/project/ncwms/ncwms/1.2/ncWMS-1.2.war
RUN cp ncWMS-1.2.war /var/lib/tomcat7/webapps/
RUN updatedb
