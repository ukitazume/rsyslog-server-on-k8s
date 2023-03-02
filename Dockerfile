FROM rsyslog/syslog_appliance_alpine:8.36.0-3.7
COPY ./rsyslog_exporter /usr/local/bin/
