FROM node:boron

ENV DEBUG=analytics-proxy-bot:*
ENV DASHBOT_ACCESS_TOKEN=cSYos3xnAt2lZEnfI5fJ9VRpjQOV9xcGbfaCyvT5
ENV FACEBOOK_ACCESS_TOKEN=EAASoYtcU9hgBALFP7x1NbZAbaQp3cqq5dt3av4OjKnCiWLIGNEDSizUZBPvtu2sx0wTOqDvChnAwCGalJUW3c32gS8NmlNC9f5WmD8yToGtr1x5WGIo4ZAnQulTpnJItWXJ5ZCiE2bfIOGvx3WcEnrsrshtql5Dd0jeQoQ7OqAZDZD
ENV FACEBOOK_VERIFY_TOKEN=this_is_a_token


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