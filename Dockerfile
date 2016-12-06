FROM docker/whalesay:latest
ENV http_proxy 'http://proxy.sin.sap.corp:8080'
ENV https_proxy 'https://proxy.sin.sap.corp:8080'
ENV HTTP_PROXY 'http://proxy.sin.sap.corp:8080'
ENV HTTPS_PROXY 'https://proxy.sin.sap.corp:8080' 
RUN apt-get -y update && apt-get install -y fortunes
CMD /usr/games/fortune -a | cowsay
