FROM	kylemanna/openvpn
LABEL	maintainer="Alexandre Buisine <alexandrejabuisine@gmail.com>"
LABEL	version="1.0.2"

RUN apk add --no-cache socat

COPY resources/socat.sh /usr/local/bin/socat.sh

RUN chmod +x /usr/local/bin/socat.sh

ENTRYPOINT [ "/usr/sbin/openvpn" ]