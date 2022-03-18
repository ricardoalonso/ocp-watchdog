FROM ubi8/ubi

RUN dnf install -y --nodocs watchdog && dnf clean all

CMD /usr/sbin/watchdog -F
