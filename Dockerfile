FROM ubuntu:bionic

WORKDIR /srv

RUN apt-get update
RUN apt-get install -y jekyll nginx
COPY src/ ./
RUN jekyll build
ENTRYPOINT ["jekyll", "serve", "--port", "8080"]

EXPOSE 8080