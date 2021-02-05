FROM debian:stretch-slim

RUN apt update \
  && apt install -y curl gnupg apt-transport-https

RUN curl -L https://nextdns.io/repo.gpg | apt-key add - \
  && echo "deb https://nextdns.io/repo/deb stable main" | tee /etc/apt/sources.list.d/nextdns.list \
  && apt update \
  && apt install nextdns

EXPOSE 53/tcp 53/udp

ADD ./run.sh /
CMD ["/run.sh"]
