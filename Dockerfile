FROM node:boron

ENV DEBUG=analytics-proxy-bot:*
ENV DASHBOT_ACCESS_TOKEN=<PROVIDE VALUE>
ENV FACEBOOK_ACCESS_TOKEN=<PROVIDE VALUE>
ENV FACEBOOK_VERIFY_TOKEN=<PROVIDE VALUE>


# Create app directory
RUN mkdir -p /usr/src/analytics-proxy-bot
WORKDIR /usr/src/analytics-proxy-bot

# Install app dependencies
COPY package.json /usr/src/analytics-proxy-bot/
RUN npm install

# Bundle app source
COPY . /usr/src/analytics-proxy-bot

EXPOSE 3000
CMD [ "npm", "start" ]