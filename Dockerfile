FROM node:lts-alpine

RUN apk add --no-cache git python3 libusb-dev libusb make gcc musl-dev linux-headers libudev-zero-dev
RUN npm install --only=production -g node-owlusb@0.1.3
#COPY healthcheck.js /healthcheck.js
#VOLUME [ "/alexa-fhem" ]

EXPOSE 3000
#HEALTHCHECK --interval=120s --timeout=12s --start-period=30s \  
# CMD node /healthcheck.js
USER node
#WORKDIR "/alexa-fhem"
# ENTRYPOINT ["/usr/local/lib/node_modules/alexa-fhem/bin/alexa", "--dockerDetached"]
CMD ["/bin/sh"]
