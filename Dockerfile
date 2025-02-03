FROM ubuntu:latest
RUN apt update -y && \
    apt clean

WORKDIR /xilriws
ENV DEBIAN_FRONTEND noninteractive

RUN apt update -y
RUN apt install -y wget
RUN wget -q -O - http://ports.ubuntu.com/pool/universe/c/chromium-browser/chromium-browser_85.0.4183.83-0ubuntu0.20.04.3_arm64.deb > ./chrome.deb
RUN apt install -y ./chrome.deb
RUN rm ./chrome.deb

COPY . .

ENTRYPOINT ["./xilriws"]
