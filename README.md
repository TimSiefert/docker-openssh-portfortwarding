# docker-openssh-portfortwarding

This is a simple docker image which provides an openssh server with predefined root-credentials (user=root, password=root).

Its main usage is to be used as a port forwarding server.

* PermitRootLogin is enabled
* GatewayPorts is enabled

This more is based on the great work of [https://github.com/trashpanda001/docker-alpine-sshd](https://github.com/trashpanda001/docker-alpine-sshd).
