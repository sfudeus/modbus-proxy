FROM python:3-slim

RUN pip --disable-pip-version-check --no-input --no-cache-dir --timeout 3 install modbus-proxy[yaml]
VOLUME /config

USER 1001

ENTRYPOINT ["modbus-proxy"]
CMD ["-c", "/config/modbus-proxy.yml"]
