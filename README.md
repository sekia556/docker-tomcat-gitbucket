# tomcat-gitbucket

Dockerfile for [gitbucket-3.8](https://github.com/takezoe/gitbucket) with tomcat:7-jre7 image (java-1.7, tomcat 7).


## Usage

```
$ sudo mkdir -p /opt/data/gitbucket /opt/data/tomcat_logs
$ sudo docker run --name gitbucket -d -p 8080:8080 -p 29418:29418 -v /opt/data/gitbucket:/tmp/gitbucket -v /opt/data/tomcat_logs:/tmp/tomcat_logs sekia556/tomcat-gitbucket
```

Note
- gitbucket.war is deployed as ROOT.war, so you can access GitBucket top page as http://(host):8080/.
- Tomcat logs are located in /opt/data/tomcat_logs (/tmp/tomcat_logs in container).


## Build

```
$ sudo docker build -t sekia556/tomcat-gitbucket .
```

