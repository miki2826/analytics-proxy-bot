const Botly = require('botly');
const dashbot = require('dashbot')(process.env.DASHBOT_ACCESS_TOKEN).facebook;

const botly = new Botly( {
    pageId: process.env.FACEBOOK_PAGE_ID,
    accessToken: process.env.FACEBOOK_ACCESS_TOKEN,
    verifyToken: process.env.FACEBOOK_VERIFY_TOKEN
});

botly.on('complete_message', (message) => {
    if (!isEcho(message)) {
        dashbot.logIncoming(message);
    }
});

botly.on('echo', (sender, message, internalMessage) => {
    dashbot.logOutgoing({
        qs: {
            access_token: 'IS_NOT_HAPPENING'
        },
        json: {
            recipient: {
                id: sender
            },
            message: internalMessage
        }
    }, {
        'recipient_id': sender,
        'message_id': internalMessage.mid
    });
});

function isEcho(message) {
    let isEcho = false;
    message.entry.forEach(entry => {
        entry.messaging.forEach(message => {
            if (message && message.message && message.message.is_echo) {
                isEcho = true;
            }
        });
    });

    return isEcho;
}

module.exports = botly;