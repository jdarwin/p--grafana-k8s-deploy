FROM centos:latest
COPY /tmp/prometheus-2.36.1.linux-amd64.tar.gz  /
RUN tar -xzvf /prometheus-2.36.1.linux-amd64.tar.gz
EXPOSE 9090
CMD prometheus-2.36.1.linux-amd64/./prometheus  --config.file=prometheus-2.36.1.linux-amd64/prometheus.yml
