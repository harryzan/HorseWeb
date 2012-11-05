package com.horseweb.mail;

import javax.mail.*;

/**
 * Created by IntelliJ IDEA.
 * User: xiejiao
 * Date: 11-9-20
 * Time: 下午3:26
 */
public class MailAuthenticator extends Authenticator {

    //******************************
    //由于发送邮件的地方比较多,
    //下面统一定义用户名,口令.
    //******************************
    public static String MAIL_USER = "harryzan@gmail.com";

    public static String MAIL_PASSWORD = "MniHZImcp";


    public MailAuthenticator() {
    }

    protected PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication(MAIL_USER, MAIL_PASSWORD);
    }

}

