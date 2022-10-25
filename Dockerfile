FROM alpine
ARG SNELL_URL=https://github.com/surge-networks/snell/releases/download/v3.0.1/snell-server-v3.0.1-linux-amd64.zip
ENV LANG=C.UTF-8
ENV PORT=12543
ENV PSK=
ENV OBFS=tls
COPY Entrypoint.sh /usr/bin/
RUN apk add gcompat
RUN apk upgrade --no-cache && \
    apk add --no-cache libgcc libstdc++
RUN wget --no-check-certificate -O snell.zip $SNELL_URL
RUN unzip snell.zip
RUN rm -f snell.zip
RUN chmod +x /usr/bin/Entrypoint.sh
RUN chmod +x snell-server
RUN mv snell-server /usr/bin/
ENTRYPOINT ["Entrypoint.sh"]