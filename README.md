analytics-proxy-bot
================

## Get Started
- Run `npm i` 
- Provide the following environment variables:
 - `FACEBOOK_ACCESS_TOKEN` - the token related to the page generated in facebook app
 - `FACEBOOK_VERIFY_TOKEN` - some secret string you decide, you will need to provide it later when you setup the webhook in facebook app
 - `DASHBOT_ACCESS_TOKEN` - token provided when created a dashbot account
- Run `npm start`
 
To run with docker please insert the above environment variables to the `Dockerfile`

##API
The server will expose a `/fb` webhook

##Nex steps
Configure dashbot account and copy the token as the `DASHBOT_ACCESS_TOKEN`
![dashbot](/docs/dashbot.png)

Create a facebook app and add the messenger product.  
In the `Token Generation` select your page and copy the page access token to the server as `FACEBOOK_ACCESS_TOKEN`
![app](/docs/facebook_app.png)

Deploy the server.

Define a webhook in your facebook app 
![hook](/docs/webhook1.png)
![hook](/docs/webhook2.png)

Register your page against the webhook
![register](/docs/register.png)

