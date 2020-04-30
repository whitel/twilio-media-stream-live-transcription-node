FROM fedora
RUN dnf install -y node npm && \
    dnf clean all
RUN npm install twilio ws express
WORKDIR /opt/twilio-blog
VOLUME /opt/twilio-blog
EXPOSE 8080
ENTRYPOINT [ "node", "index.js" ]
#CMD [ "/usr/bin/node /opt/twilio-blog/index.js" ]