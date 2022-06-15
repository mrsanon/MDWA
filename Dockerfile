FROM aquabotwa/sanuwa-official:beta 

RUN git clone https://github.com/mrsanon/MDWA /root/MDWA
WORKDIR /root/MDWA/
ENV TZ=Europe/Istanbul
RUN yarn add supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
