package com.horseweb.mail;

import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.*;
import javax.mail.internet.*;
import java.io.IOException;
import java.security.Security;
import java.util.Date;
import java.util.Enumeration;
import java.util.Properties;
import java.util.Vector;

/**
 * Created by IntelliJ IDEA.
 * User: xiejiao
 * Date: 11-9-20
 * Time: 下午3:58
 */
public class SendMail {

    //要发送Mail地址
    private String mailTo = null;

    //Mail发送的起始地址
    private String mailFrom = null;

    //SMTP主机地址
    private String smtpHost = null;

    //是否采用调试方式
    private boolean debug = false;

//    private String messageBasePath = null;

    //Mail主题
    private String subject;

    //Mail内容
    private String msgContent;

    private Vector<String> attachedFileList;

    private String mailAccount = null;

    private String mailPass = null;

    private String messageContentMimeType = "text/html; charset=UTF-8";

    private String mailbccTo = null;

    private String mailccTo = null;

    /**
     * SendMailService 构造子注解。
     */
    public SendMail() {
        super();
        this.smtpHost = "smtp.google.com";
        this.mailFrom = "harryzan@gmail.com";
    }

    private void fillMail(Session session, MimeMessage msg) throws IOException, MessagingException {

        String fileName = null;
        Multipart mPart = new MimeMultipart();
        if (mailFrom != null) {
            msg.setFrom(new InternetAddress(mailFrom));
        }
        else {
            System.out.println("没有指定发送人邮件地址！");
            return;
        }
        if (mailTo != null) {
            InternetAddress[] address = InternetAddress.parse(mailTo);
            msg.setRecipients(Message.RecipientType.TO, address);
        }
        else {
            System.out.println("没有指定收件人邮件地址！");
            return;
        }

        if (mailccTo != null) {
            InternetAddress[] ccaddress = InternetAddress.parse(mailccTo);
            msg.setRecipients(Message.RecipientType.CC, ccaddress);
        }
        if (mailbccTo != null) {
            InternetAddress[] bccaddress = InternetAddress.parse(mailbccTo);
            msg.setRecipients(Message.RecipientType.BCC, bccaddress);
        }
        msg.setSubject(subject);
        InternetAddress[] replyAddress = {new InternetAddress(mailFrom)};
        msg.setReplyTo(replyAddress);
        // create and fill the first message part
        MimeBodyPart mBodyContent = new MimeBodyPart();
        if (msgContent != null) {
            mBodyContent.setContent(msgContent, messageContentMimeType);
        }
        else {
            mBodyContent.setContent("", messageContentMimeType);
        }
        mPart.addBodyPart(mBodyContent);
        // attach the file to the message
        if (attachedFileList != null) {
            for (Enumeration<String> fileList = attachedFileList.elements(); fileList.hasMoreElements();) {
                fileName = fileList.nextElement();
                MimeBodyPart mBodyPart = new MimeBodyPart();

                // attach the file to the message
                FileDataSource fds = new FileDataSource(fileName);
                mBodyPart.setDataHandler(new DataHandler(fds));
                // 设置正确的邮件文件名
                mBodyPart.setFileName(MimeUtility.encodeText(fds.getName()));
                mPart.addBodyPart(mBodyPart);
            }
        }
        msg.setContent(mPart);
        msg.setSentDate(new Date());
    }

    /**
     * 此处插入方法说明。
     */
    public void init() {

    }

    /**
     * 发送e_mail，返回类型为boolean
     * 当返回值为true时，说明邮件发送成功
     * 当返回值为false时，说明邮件发送失败
     */
    public boolean sendMail() throws IOException, MessagingException {

        Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
        final String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";


        int loopCount;
        Properties props = System.getProperties();
        props.setProperty("mail.smtp.host", smtpHost);
        props.setProperty("mail.smtp.auth", "true");
        props.setProperty("mail.smtp.port", "465");
        props.setProperty("mail.smtp.auth", "true");
        props.setProperty("mail.smtp.ssl.enable", "false");//"true"
        props.setProperty("mail.smtp.connectiontimeout", "5000");
        props.setProperty("mail.smtp.socketFactory.class", SSL_FACTORY);
        props.setProperty("mail.smtp.socketFactory.fallback", "false");
        props.setProperty("mail.smtp.socketFactory.port", "465");

        MailAuthenticator auth = new MailAuthenticator();

        Session session = Session.getInstance(props, auth);
        session.setDebug(debug);
        MimeMessage msg = new MimeMessage(session);
        Transport trans = null;
        try {

            fillMail(session, msg);
            // send the message
            trans = session.getTransport("smtp");
            try {
                trans.connect(smtpHost, MailAuthenticator.MAIL_USER, MailAuthenticator.MAIL_PASSWORD);
            }
            catch (AuthenticationFailedException e) {
                return false;
            }
            catch (MessagingException e) {
                return false;
            }
            trans.send(msg);
            trans.close();

        }
        catch (MessagingException mex) {
            mex.printStackTrace();
            Exception ex = null;
            if ((ex = mex.getNextException()) != null) {
                System.out.println(ex.toString());
                ex.printStackTrace();
            }
            return false;
        }
        finally {
            try {
                if (trans != null && trans.isConnected()) {
                    trans.close();
                }
            }
            catch (Exception e) {
                System.out.println(e.toString());
            }
        }
        return true;
    }

    public void setAttachedFileList(Vector<String> filelist) {
        attachedFileList = filelist;
    }

    public void setDebug(boolean debugFlag) {
        debug = debugFlag;
    }

    public void setMailAccount(String strAccount) {
        mailAccount = strAccount;
    }

    public void setMailbccTo(String bccto) {
        mailbccTo = bccto;
    }

    public void setMailccTo(String ccto) {
        mailccTo = ccto;
    }

    public void setMailFrom(String from) {
        mailFrom = from;
    }

    public void setMailPass(String strMailPass) {
        mailPass = strMailPass;
    }

    public void setMailTo(String to) {
        mailTo = to;
    }

//    public void setMessageBasePath(String basePath) {
//        messageBasePath = basePath;
//    }

    public void setMessageContentMimeType(String mimeType) {
        messageContentMimeType = mimeType;
    }

    public void setMsgContent(String content) {
        msgContent = content;
    }

    public void setSMTPHost(String host) {
        smtpHost = host;
    }

    public void setSubject(String sub) {
        subject = sub;
    }

    public static void main(String[] args) throws Exception {
//        for (int i = 0; i < 10; i++) {
        SendMail sm = new SendMail();
//        sm.setSMTPHost("mail.justonetech.com");
//        sm.setMailFrom("xiejiao@justonetech.com");
        sm.setMailTo("harryzan@gmail.com");
//        sm.setMailccTo("lizhiheng@justonetech.com");
//        sm.setMailccTo("zhanyonglin@justonetech.com");
        sm.setSubject("测试");
        sm.setMsgContent("测试：this message is test for health monitor!");
//        Vector<String> vector = new Vector<String>();
//        vector.add("E:\\work\\shcjsq-health\\trunk\\testspaces\\document_data\\阴极保护与除湿机日报\\阴极保护系统2012年08月21日监测数据.xls");
//        sm.setAttachedFileList(vector);
        sm.sendMail();
//        }

//        InternetAddress[] addresses = InternetAddress.parse("xiejiao@justonetech.com,xiejiao_java@sina.com,chenxuesong@justonetech.com");
//        for(InternetAddress address : addresses ){
//            System.out.println("address = " + address.getAddress());
//        }
    }
}
