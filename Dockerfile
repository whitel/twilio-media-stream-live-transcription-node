FROM fedora
RUN dnf install -y node npm && \
    dnf clean all
RUN npm install --save twilio ws express @google-cloud/speech
RUN npm install nodemon -g
WORKDIR /opt/twilio-blog
VOLUME /opt/twilio-blog
EXPOSE 8080
ENTRYPOINT [ "nodemon", "index.js" ]
#CMD [ "/usr/bin/node /opt/twilio-blog/index.js" ]