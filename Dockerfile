FROM 722626/jmeter-base:5.5
LABEL maintainer="frcolas"

EXPOSE 1099 60001
ENV SSL_DISABLED true

ENTRYPOINT jmeter-server -Dserver.rmi.localport=60001 -Dserver_port=1099 \
            -Jserver.rmi.ssl.disable=${SSL_DISABLED}
