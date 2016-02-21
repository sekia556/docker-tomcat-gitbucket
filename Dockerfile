FROM tomcat:7-jre7
## Gitbucket is built/tested on java7

MAINTAINER sekia556 <sekia556 [at] yahoo.co.jp>

## Prepare GITBUCKET_HOME
## CATALINA_HOME is /usr/local/tomcat
ENV GITBUCKET_HOME $CATALINA_HOME/gitbucket
RUN mkdir -p $GITBUCKET_HOME

## Deploy gitbucket.war as ROOT.war
RUN rm -rf $CATALINA_HOME/webapps/*
ADD https://github.com/gitbucket/gitbucket/releases/download/3.9/gitbucket.war $CATALINA_HOME/webapps/ROOT.war

RUN ln -s $GITBUCKET_HOME /tmp/gitbucket
RUN ln -s $CATALINA_HOME/logs /tmp/tomcat_logs

# /usr/local/tomcat/gitbucket
VOLUME /tmp/gitbucket    
# /usr/local/tomcat/logs
VOLUME /tmp/tomcat_logs

EXPOSE 8080
CMD ["catalina.sh", "run"]

