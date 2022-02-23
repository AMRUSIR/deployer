FROM quay.io/lyfe00011/test:beta

RUN git clone https://github.com/Ajx-Abu/Abu_ser /root/WhatsAsenaDuplicated
WORKDIR /root/WhatsAsenaDuplicated/
RUN yarn install --no-audit
RUN git clone https://github.com/Ajx-Abu/sana-media
RUN cp -R /root/Utils/* /root/WhatsAsenaDuplicated 
RUN npm install supervisor -g
CMD ["node", "bot.js"]
