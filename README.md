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

# Test
```
curl localhost:8080/app/foo
```

# OpenShift
```
oc new-project my-foo --display-name='My Foo' --description='My Foo'
oc new-build -n my-foo --name=my-foo --strategy=docker --binary
oc start-build -n my-foo my-foo --from-file=. --follow
oc new-app my-foo
oc expose svc my-foo
```