FROM alpine:3.8

# Install required packages
RUN apk --no-cache add bash python py-yaml wget

# Copy startup
COPY entrypoint.yaml /
COPY docker-entrypoint.py /
COPY startup.sh /

# Install yq

RUN wget -O /usr/local/bin/yq https://github.com/mikefarah/yq/releases/download/3.1.2/yq_linux_amd64 ; chmod +x /usr/local/bin/yq

RUN chmod +x /startup.sh
RUN chmod +x /docker-entrypoint.py

ENTRYPOINT ["/docker-entrypoint.py"]

CMD ["/startup.sh"]
