<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <style>
        body { font-family: Arial, sans-serif; color: #333; margin: 0; padding: 0; background: #f5f5f5; }
        .wrapper { max-width: 600px; margin: 40px auto; background: #fff; border-radius: 12px; overflow: hidden; }
        .header { background: #1B2A4A; padding: 32px; text-align: center; }
        .header h1 { color: #B8860B; margin: 0; font-size: 22px; }
        .header p { color: #fff; margin: 6px 0 0; font-size: 14px; }
        .body { padding: 32px; }
        .field { margin-bottom: 20px; }
        .label { font-size: 11px; font-weight: bold; text-transform: uppercase; letter-spacing: 1px; color: #888; margin-bottom: 4px; }
        .value { font-size: 15px; color: #222; }
        .message-box { background: #f9f9f9; border-left: 4px solid #B8860B; padding: 16px; border-radius: 4px; white-space: pre-wrap; line-height: 1.6; }
        .footer { background: #f5f5f5; padding: 20px; text-align: center; font-size: 12px; color: #aaa; }
    </style>
</head>
<body>
<div class="wrapper">
    <div class="header">
        <h1>✝ Grace Church</h1>
        <p>New message from your website contact form</p>
    </div>
    <div class="body">
        <div class="field">
            <div class="label">From</div>
            <div class="value">{{ $senderName }}</div>
        </div>
        <div class="field">
            <div class="label">Email</div>
            <div class="value"><a href="mailto:{{ $senderEmail }}" style="color:#1B2A4A;">{{ $senderEmail }}</a></div>
        </div>
        <div class="field">
            <div class="label">Message</div>
            <div class="message-box">{{ $messageBody }}</div>
        </div>
    </div>
    <div class="footer">
        Sent via Grace Church website contact form
    </div>
</div>
</body>
</html>
