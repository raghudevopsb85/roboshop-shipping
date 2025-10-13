FROM          docker.io/redhat/ubi9
RUN           dnf install mysql git -y
RUN           mkdir /app
COPY          run.sh /app
RUN           git clone http://github.com/raghudevopsb85/roboshop-shipping /app
ENTRYPOINT    ["bash", "/app/run.sh"]
