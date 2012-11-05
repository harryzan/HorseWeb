package com.horseweb.action.manage;

import com.horseweb.core.domain.Home;
import com.horseweb.core.domain.Horse;
import com.horseweb.core.repository.HomeRepository;
import com.horseweb.core.repository.HorseRepository;
import com.horseweb.core.util.StringHelp;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

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
    @Action(results = {@Result(name = SUCCESS, location = "/manage/mindex", type = "redirect"), @Result(name = ERROR, location = "/manage/default")})
    public String execute() throws Exception {


        if (name.equals(loginname) && passwd.equals(password))
            return SUCCESS;
        else
            return ERROR;
    }
}
