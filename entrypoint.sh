#!/bin/ash
# By https://github.com/trashpanda001/docker-alpine-sshd
# generate host keys if not present
ssh-keygen -A
# do not detach (-D), log to stderr (-e), passthrough other arguments
exec /usr/sbin/sshd -D -e "$@"
