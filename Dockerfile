FROM              docker.io/amazoncorretto:17
RUN               yum install unzip -y
ADD               https://download.newrelic.com/newrelic/java-agent/newrelic-agent/current/newrelic-java.zip /usr/local/
RUN               cd /usr/local && unzip newrelic-java.zip && rm -f newrelic-java.zip
RUN               mkdir /app
WORKDIR           /app
ADD               target/shipping-1.0.jar /app/shipping.jar
ADD               run.sh /app/
ENTRYPOINT        ["bash", "/app/run.sh"]

