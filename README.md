analytics-proxy-bot
================

## Get Started
- Run `npm i` 
- Provide the following environment variables:
 - `FACEBOOK_ACCESS_TOKEN` - the token related to the page generated if facebook app
 - `FACEBOOK_VERIFY_TOKEN` - some string, you will need to provide it later when you setup the webhook in facebook app
 - `DASHBOT_ACCESS_TOKEN` - token provided when created a dashbot account
- Run `npm start`
 
To run with docker please insert the above environment variables to the `Dockerfile`

##API
The server will expose a `/fb` webhook