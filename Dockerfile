FROM	kylemanna/openvpn
LABEL	maintainer="Alexandre Buisine <alexandrejabuisine@gmail.com>"
LABEL	version="1.0"

RUN apk add --no-cache socat

COPY resources/socat.sh /usr/local/bin/socat.sh

RUN chmod +x /usr/local/bin/socat.sh

ENV SSH_HOST=172.17.0.1

ENTRYPOINT [ "/usr/sbin/openvpn" ]