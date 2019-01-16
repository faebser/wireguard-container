# Usage:
#
# This uses a custom installs a kernel module hence the mounts

# docker run --rm -it \
# 	--name wireguard \
# 	-v /lib/modules:/lib/modules \
# 	-v /usr/src:/usr/src:ro
#
FROM alpine:edge
LABEL maintainer "Fabian Frei <fabian@tofu.wtf>"

RUN echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk add --no-cache -U wireguard-tools@testing wireguard-virt@testing

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]
CMD [ "wg", "--help" ]
