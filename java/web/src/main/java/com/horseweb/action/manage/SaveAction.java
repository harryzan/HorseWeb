package com.horseweb.action.manage;

import com.horseweb.core.domain.*;
import com.horseweb.core.repository.*;
import com.horseweb.core.util.StringHelp;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;

import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: harryzan
 * Date: 9/22/12
 * Time: 9:19 AM
 * To change this template use File | Settings | File Templates.
 */
@ParentPackage("struts-default")
public class SaveAction extends ActionSupport implements ServletResponseAware {

    @Autowired
    private HomeRepository homeRepository;

    @Autowired
    private AboutusRepository aboutusRepository;

    @Autowired
    private GalleryRepository galleryRepository;

    @Autowired
    private HorseRepository horseRepository;

    @Autowired
    private IntroductionRepository introductionRepository;


    private String content;

    private Integer order;

    private String name;

    private String anchor;

    private String type;

    private String lang;

    public String getLang() {
        return lang;
    }

    public void setLang(String lang) {
        this.lang = lang;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

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

    public String getAnchor() {
        return anchor;
    }

    public void setAnchor(String anchor) {
        this.anchor = anchor;
    }

    public String saveHomeContent() throws Exception {
        Home home = homeRepository.findOneByName(name);
        if (home == null) {
            home = new Home();
            home.setName(name);
        }

        home.setOrder(order);
        home.setContent(content);
        home.setAnchor(anchor);
        homeRepository.save(home);

        writeSuccess();
        return null;
    }

    public String saveAboutusContent() throws Exception {
        Aboutus aboutus = aboutusRepository.findOneByName(name);
        if (aboutus == null) {
            aboutus = new Aboutus();
            aboutus.setName(name);
        }

        aboutus.setOrder(order);
        aboutus.setContent(content);
        aboutus.setAnchor(anchor);
        aboutusRepository.save(aboutus);

        writeSuccess();
        return null;
    }

    public String saveGalleryContent() throws Exception {
        Gallery gallery = galleryRepository.findOneByName(name);
        if (gallery == null) {
            gallery = new Gallery();
            gallery.setName(name);
        }

        gallery.setOrder(order);
        gallery.setContent(content);
        gallery.setAnchor(anchor);
        galleryRepository.save(gallery);

        writeSuccess();
        return null;
    }

    public String removeGalleryContent() throws Exception {
        Gallery gallery = galleryRepository.findOneByName(name);
        if (gallery != null) {
            galleryRepository.delete(gallery);
        }

        writeSuccess();
        return null;
    }

    public String saveHorseContent() throws Exception {
        Horse horse = horseRepository.findOneByName(name);
        if (horse == null) {
            horse = new Horse();
            horse.setName(name);
            horse.setType(type);
        }

        horse.setLang(lang);
        horse.setOrder(order);
        horse.setContent(content);
        horse.setAnchor(anchor);
        horseRepository.save(horse);

        writeSuccess();
        return null;
    }

    public String removeHorseContent() throws Exception {
        Horse horse = horseRepository.findOneByName(name);
        if (horse != null) {
            horseRepository.delete(horse);
        }

        writeSuccess();
        return null;
    }

    public String upHorseContent() throws Exception {
        Sort order = new Sort(Sort.Direction.DESC, "order");

        Horse horse = horseRepository.findOneByName(name);
        if (horse != null) {

            List<Horse> all;
            if (StringHelp.isEmpty(type)) {
                all = horseRepository.findByLang(lang, order);
            }
            else {
                all = horseRepository.findByTypeAndLang(type, lang, order);
            }

            Horse privous = null;
            for (Horse other : all) {
                if (other.getId().equals(horse.getId())) {
                    if (privous != null){
                        Integer ordernum = privous.getOrder();
                        privous.setOrder(horse.getOrder());
                        horse.setOrder(ordernum);

                        horseRepository.save(privous);
                        horseRepository.save(horse);
                    }
                    break;
                }
                else {
                    privous = other;
                }
            }
        }

        writeSuccess();
        return null;
    }

    public String downHorseContent() throws Exception {
        Sort order = new Sort(Sort.Direction.ASC, "order");

        Horse horse = horseRepository.findOneByName(name);
        if (horse != null) {

            List<Horse> all;
            if (StringHelp.isEmpty(type)) {
                all = horseRepository.findByLang(lang, order);
            }
            else {
                all = horseRepository.findByTypeAndLang(type, lang, order);
            }

            Horse privous = null;
            for (Horse other : all) {
                if (other.getId().equals(horse.getId())) {
                    if (privous != null){
                        Integer ordernum = privous.getOrder();
                        privous.setOrder(horse.getOrder());
                        horse.setOrder(ordernum);

                        horseRepository.save(privous);
                        horseRepository.save(horse);
                    }
                    break;
                }
                else {
                    privous = other;
                }
            }
        }

        writeSuccess();
        return null;
    }

    public String saveIntroductionContent() throws Exception {
        Introduction introduction = introductionRepository.findOneByName(name);
        if (introduction == null) {
            introduction = new Introduction();
            introduction.setName(name);
        }

        introduction.setLang(lang);
        introduction.setOrder(order);
        introduction.setContent(content);
        introduction.setAnchor(anchor);
        introductionRepository.save(introduction);

        writeSuccess();
        return null;
    }

    private void writeSuccess() throws Exception {
        PrintWriter writer = response.getWriter();
        try {
            writer.write("true");
        } finally {
            writer.flush();
            writer.close();
        }
    }

    private HttpServletResponse response;

    @Override
    public void setServletResponse(HttpServletResponse response) {
        this.response = response;
        response.setCharacterEncoding("utf-8");
    }
}
