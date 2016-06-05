# tomcat-gitbucket

Dockerfile for [gitbucket-3.13](https://github.com/gitbucket/gitbucket) with tomcat:8-jre8 image (java-1.8, tomcat 8).


## Usage

```
$ sudo mkdir -p /opt/data/gitbucket /opt/data/tomcat_logs
$ sudo docker run --name gitbucket -d -p 8080:8080 -p 29418:29418 -v /opt/data/gitbucket:/opt/gitbucket -v /opt/data/tomcat_logs:/opt/tomcat_logs sekia556/tomcat-gitbucket
```

Note
- gitbucket.war is deployed as ROOT.war, so you can access GitBucket top page as http://(host):8080/.
- Tomcat logs are located in /opt/data/tomcat_logs (/opt/tomcat_logs in container).
- Since GitBucket 3.10, embedded H2 DB is updated to tha latest versioN 1.4.190. If you have any trouble, you may see https://github.com/gitbucket/gitbucket/releases.

## Build

```
$ sudo docker build -t sekia556/tomcat-gitbucket .
```

