FROM registry.redhat.io/ubi8/ubi-init

RUN dnf update -y && \
    dnf install -y --nodocs watchdog && \
    dnf clean all && \
    systemctl enable watchdog.service && \
    sed -i 's/#watchdog-device/watchdog-device/' /etc/watchdog.conf && \
    sed -i 's/realtime/#realtime/' /etc/watchdog.conf

#CMD /usr/sbin/watchdog -F
