package com.horseweb.action.cnmanage;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

/**
 * Created with IntelliJ IDEA.
 * User: harryzan
 * Date: 9/22/12
 * Time: 9:19 AM
 * To change this template use File | Settings | File Templates.
 */
@ParentPackage("struts-default")
public class LoginAction extends ActionSupport {

    private String loginname;

    private String password;

    public String getLoginname() {
        return loginname;
    }

    public void setLoginname(String loginname) {
        this.loginname = loginname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    private static String name = "admin";

    private static String passwd = "limaadmin";

    @Override
    @Action(results = {@Result(name = SUCCESS, location = "/cnmanage/mindex", type = "redirect"), @Result(name = ERROR, location = "/cnmanage/default")})
    public String execute() throws Exception {


        if (name.equals(loginname) && passwd.equals(password))
            return SUCCESS;
        else
            return ERROR;
    }
}
