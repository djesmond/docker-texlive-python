FROM debian:stretch
LABEL maintainer="djesmond@github"

ADD install.sh install.sh
RUN sh install.sh && rm install.sh

VOLUME ["/source"]
WORKDIR /source
CMD ["bash"]
