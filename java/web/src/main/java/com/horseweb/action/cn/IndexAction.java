package com.horseweb.action.cn;

import com.horseweb.core.domain.Home;
import com.horseweb.core.repository.HomeRepository;
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
public class IndexAction extends ActionSupport {

    @Autowired
    private HomeRepository homeRepository;

    private String piccontent;

    private String horse1content;

    private String horse2content;

    private String horse3content;

    private String aboutus1content;

    private String aboutus2content;

    private String highlightcontent;

    private String introductioncontent;

//    private Integer order;

//    private String name;


    public String getIntroductioncontent() {
        return introductioncontent;
    }

    public void setIntroductioncontent(String introductioncontent) {
        this.introductioncontent = introductioncontent;
    }

    public String getPiccontent() {
        return piccontent;
    }

    public void setPiccontent(String piccontent) {
        this.piccontent = piccontent;
    }

    public String getHorse1content() {
        return horse1content;
    }

    public void setHorse1content(String horse1content) {
        this.horse1content = horse1content;
    }

    public String getHorse2content() {
        return horse2content;
    }

    public void setHorse2content(String horse2content) {
        this.horse2content = horse2content;
    }

    public String getHorse3content() {
        return horse3content;
    }

    public void setHorse3content(String horse3content) {
        this.horse3content = horse3content;
    }

    public String getAboutus1content() {
        return aboutus1content;
    }

    public void setAboutus1content(String aboutus1content) {
        this.aboutus1content = aboutus1content;
    }

    public String getAboutus2content() {
        return aboutus2content;
    }

    public void setAboutus2content(String aboutus2content) {
        this.aboutus2content = aboutus2content;
    }

    public String getHighlightcontent() {
        return highlightcontent;
    }

    public void setHighlightcontent(String highlightcontent) {
        this.highlightcontent = highlightcontent;
    }

    @Override
    public String execute() throws Exception {
        Home home = homeRepository.findOneByName("cnpic");
        if (home != null) {
            piccontent = home.getContent();
        }

        home = homeRepository.findOneByName("cnhorse1");
        if (home != null) {
            horse1content = home.getContent();
        }

        home = homeRepository.findOneByName("cnhorse2");
        if (home != null) {
            horse2content = home.getContent();
        }

        home = homeRepository.findOneByName("cnhorse3");
        if (home != null) {
            horse3content = home.getContent();
        }

        home = homeRepository.findOneByName("cnaboutus1");
        if (home != null) {
            aboutus1content = home.getContent();
        }

        home = homeRepository.findOneByName("cnaboutus2");
        if (home != null) {
            aboutus2content = home.getContent();
        }

        home = homeRepository.findOneByName("cnhighlight");
        if (home != null) {
            highlightcontent = home.getContent();
        }

        home = homeRepository.findOneByName("cnintroduction");
        if (home != null) {
            introductioncontent = home.getContent();
        }

        return SUCCESS;
    }
}
