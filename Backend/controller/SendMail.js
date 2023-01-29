require('dotenv').config();
const nodemailer = require('nodemailer');
exports.send = (req, res) => {
    const { email, textSendMail } = req.body;
    let transporter = nodemailer.createTransport({
        service: 'gmail',
        auth: {
            user: 'ttdat2112@gmail.com', // generated ethereal user
            pass: 'qipvfezfbnvfuwsp', // generated ethereal password
        },
    });

    // send mail with defined transport object
    transporter.sendMail(
        {
            from: 'ttdat2112@gmail.com', // sender address
            to: email, // list of receivers
            subject: 'Job search', // Subject line
            text: textSendMail, // plain text body
            html: `<b>${textSendMail}</b>`, // html body
        },
        (err) => {
            if (err) {
                return res.json({
                    message: 'Lỗi',
                    err,
                });
            }
            return res.json({
                message: 'Đã gửi',
            });
        },
    );
};
