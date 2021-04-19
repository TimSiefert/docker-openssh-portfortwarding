FROM alpine:3.13

# Inspired by https://github.com/trashpanda001/docker-alpine-sshd

RUN apk --update add --no-cache \
  openssh

RUN mkdir /var/run/sshd
RUN mkdir /log

RUN echo "root:root" | chpasswd
RUN sed -i s/#PermitRootLogin.*/PermitRootLogin\ yes/ /etc/ssh/sshd_config
RUN sed -i s/#GatewayPorts.*/GatewayPorts\ yes/ /etc/ssh/sshd_config

COPY entrypoint.sh /usr/entrypoint.sh
RUN chmod +x /usr/entrypoint.sh
EXPOSE 22

ENTRYPOINT ["/usr/entrypoint.sh"]