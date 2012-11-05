package com.horseweb.action;

import com.horseweb.core.domain.Gallery;
import com.horseweb.core.domain.Home;
import com.horseweb.core.repository.GalleryRepository;
import com.horseweb.core.repository.HomeRepository;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.convention.annotation.ParentPackage;
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
public class GalleryAction extends ActionSupport {

    @Autowired
    private GalleryRepository galleryRepository;

    @Autowired
    private HomeRepository homeRepository;

    private List<Gallery> galleries;

    private Integer count;

    private String introductioncontent;

    public String getIntroductioncontent() {
        return introductioncontent;
    }

    public void setIntroductioncontent(String introductioncontent) {
        this.introductioncontent = introductioncontent;
    }

    public List<Gallery> getGalleries() {
        return galleries;
    }

    public void setGalleries(List<Gallery> galleries) {
        this.galleries = galleries;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    @Override
    public String execute() throws Exception {

        galleries = galleryRepository.findAll();
        count = galleries.size();

        Home home = homeRepository.findOneByName("introduction");
        if (home != null) {
            introductioncontent = home.getContent();
        }

        return SUCCESS;
    }
}
