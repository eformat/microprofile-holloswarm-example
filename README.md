
![alt text](https://github.com/eformat/microprofile-holloswarm-example/blob/master/image/The-Skinny-on-Fat-Thin-Hollow-and-Uber-300x225.png "holloswarm skinny")

# Start
```
mvn archetype:generate -Dfilter=com.airhacks:javaee8-essentials-archetype
```

# Build
```
mvn clean package && docker build -t com.foo/foo .
```

# RUN
```
docker run --rm -p 8080:8080 --name my-foo com.foo/foo
```

```
wget http://repo2.maven.org/maven2/org/wildfly/swarm/servers/microprofile/2017.9.5/microprofile-2017.9.5-hollowswarm.jar

java -jar microprofile-2017.9.5-hollowswarm.jar -Djava.rmi.server.hostname=127.0.0.1 target/foo.war
```

# Test & Meter
```
curl localhost:8080/app/foo
```

```
/usr/local/java/jdk1.8.0_144/bin/jvisualvm
```

```
~/src/apache-jmeter-3.3/bin/jmeter.sh &
```

```
docker history --no-trunc com.foo/foo
```

# OpenShift
```
oc new-project my-foo --display-name='My Foo' --description='My Foo'
oc new-build -n my-foo --name=my-foo --strategy=docker --binary
oc start-build -n my-foo my-foo --from-file=. --follow
oc new-app my-foo
oc expose svc my-foo
```
