package com.horseweb.action.cn;

import com.horseweb.core.domain.Home;
import com.horseweb.core.domain.Introduction;
import com.horseweb.core.repository.HomeRepository;
import com.horseweb.core.repository.IntroductionRepository;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created with IntelliJ IDEA.
 * User: harryzan
 * Date: 9/22/12
 * Time: 9:19 AM
 * To change this template use File | Settings | File Templates.
 */
@ParentPackage("struts-default")
public class IntroAction extends ActionSupport {

    @Autowired
    private IntroductionRepository introductionRepository;


    @Autowired
    private HomeRepository homeRepository;

    private String introductioncontent;

    public String getIntroductioncontent() {
        return introductioncontent;
    }

    public void setIntroductioncontent(String introductioncontent) {
        this.introductioncontent = introductioncontent;
    }

    private String name;

    private String content;


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String execute() throws Exception {
        Introduction introduction = introductionRepository.findOneByNameAndLang(name, "cn");
        if (introduction != null) {
            content = introduction.getContent();
        }

        Home home = homeRepository.findOneByName("cnintroduction");
        if (home != null) {
            introductioncontent = home.getContent();
        }

        return SUCCESS;
    }
}
