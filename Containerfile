FROM ubi8/ubi-init

RUN dnf install -y --nodocs watchdog && \
    dnf clean all && \
    systemctl enable watchdog.service

#CMD /usr/sbin/watchdog -F
