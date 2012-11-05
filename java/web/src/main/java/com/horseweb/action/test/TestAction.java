package com.horseweb.action.test;

import com.horseweb.core.domain.Home;
import com.horseweb.core.repository.HomeRepository;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

/**
 * Created with IntelliJ IDEA.
 * User: harryzan
 * Date: 9/22/12
 * Time: 9:19 AM
 * To change this template use File | Settings | File Templates.
 */
@ParentPackage("struts-default")
public class TestAction extends ActionSupport implements ServletResponseAware {

    @Autowired
    private HomeRepository homeRepository;

    private String content;

    private Integer order;

    private String name;

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getOrder() {
        return order;
    }

    public void setOrder(Integer order) {
        this.order = order;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String execute() throws Exception {
        Home home = homeRepository.findOneByName("pic");
        if (home != null) {
            name = home.getName();
            order = home.getOrder();
            content = home.getContent();
        }
        return SUCCESS;
    }

    public String saveContent() throws Exception {

        System.out.println("content = " + content);

        Home home = homeRepository.findOneByName(name);
        if (home == null) {
            home = new Home();
            home.setName(name);
        }

        home.setOrder(order);
        home.setContent(content);
        homeRepository.save(home);

        PrintWriter writer = response.getWriter();
        try {
            writer.write("true");
        } finally {
            writer.flush();
            writer.close();
        }
        return null;
    }

    private HttpServletResponse response;

    @Override
    public void setServletResponse(HttpServletResponse response) {
        this.response = response;
        response.setCharacterEncoding("utf-8");
    }
}
