# DOCKER-VERSION 0.3.4
FROM dockerfile/nodejs
ADD . /ploy
RUN cd /ploy; npm install
RUN mkdir /ploy/apps
EXPOSE 80
RUN echo '{"beep":"boop"}' > /ploy/auth.json
CMD ["/ploy/bin/cmd.js", "-d", "/ploy/apps", "-a", "/ploy/auth.json", "server"]
