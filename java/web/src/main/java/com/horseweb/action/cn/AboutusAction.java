package com.horseweb.action.cn;

import com.horseweb.core.domain.Aboutus;
import com.horseweb.core.domain.Home;
import com.horseweb.core.repository.AboutusRepository;
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
public class AboutusAction extends ActionSupport {

    @Autowired
    private AboutusRepository aboutusRepository;

    @Autowired
    private HomeRepository homeRepository;

    private String aboutus1content;

    private String aboutus2content;

    private String aboutus3content;

    private String aboutus4content;

    private String aboutus5content;

    private String aboutusmenucontent;

    private String introductioncontent;

    public String getAboutusmenucontent() {
        return aboutusmenucontent;
    }

    public void setAboutusmenucontent(String aboutusmenucontent) {
        this.aboutusmenucontent = aboutusmenucontent;
    }

    public String getIntroductioncontent() {
        return introductioncontent;
    }

    public void setIntroductioncontent(String introductioncontent) {
        this.introductioncontent = introductioncontent;
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

    public String getAboutus3content() {
        return aboutus3content;
    }

    public void setAboutus3content(String aboutus3content) {
        this.aboutus3content = aboutus3content;
    }

    public String getAboutus4content() {
        return aboutus4content;
    }

    public void setAboutus4content(String aboutus4content) {
        this.aboutus4content = aboutus4content;
    }

    public String getAboutus5content() {
        return aboutus5content;
    }

    public void setAboutus5content(String aboutus5content) {
        this.aboutus5content = aboutus5content;
    }

    @Override
    public String execute() throws Exception {
        Aboutus aboutus = aboutusRepository.findOneByName("cnaboutus1");
        if (aboutus != null) {
            aboutus1content = aboutus.getContent();
        }

        aboutus = aboutusRepository.findOneByName("cnaboutus2");
        if (aboutus != null) {
            aboutus2content = aboutus.getContent();
        }

        aboutus = aboutusRepository.findOneByName("cnaboutus3");
        if (aboutus != null) {
            aboutus3content = aboutus.getContent();
        }

        aboutus = aboutusRepository.findOneByName("cnaboutus4");
        if (aboutus != null) {
            aboutus4content = aboutus.getContent();
        }

        aboutus = aboutusRepository.findOneByName("cnaboutus5");
        if (aboutus != null) {
            aboutus5content = aboutus.getContent();
        }

        aboutus = aboutusRepository.findOneByName("cnaboutusmenu");
        if (aboutus != null) {
            aboutusmenucontent = aboutus.getContent();
        }

        Home home = homeRepository.findOneByName("cnintroduction");
        if (home != null) {
            introductioncontent = home.getContent();
        }

        return SUCCESS;
    }
}
