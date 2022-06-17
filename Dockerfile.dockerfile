FROM centos:latest
COPY prometheus-2.28.0.linux-amd64.tar.gz  /
RUN tar -xzvf /prometheus-2.28.0.linux-amd64.tar.gz
EXPOSE 9090
CMD prometheus-2.28.0.linux-amd64/./prometheus  --config.file=prometheus-2.28.0.linux-amd64/prometheus.yml
