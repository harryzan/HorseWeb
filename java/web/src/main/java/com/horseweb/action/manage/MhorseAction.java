package com.horseweb.action.manage;

import com.horseweb.core.domain.Home;
import com.horseweb.core.domain.Horse;
import com.horseweb.core.repository.HomeRepository;
import com.horseweb.core.repository.HorseRepository;
import com.horseweb.core.util.StringHelp;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: harryzan
 * Date: 9/22/12
 * Time: 9:19 AM
 * To change this template use File | Settings | File Templates.
 */
@ParentPackage("struts-default")
public class MhorseAction extends ActionSupport {

    @Autowired
    private HorseRepository horseRepository;

    @Autowired
    private HomeRepository homeRepository;

    private List<Horse> horses;

    private String type;

    private Integer count;

    private String introductioncontent;

    public String getIntroductioncontent() {
        return introductioncontent;
    }

    public void setIntroductioncontent(String introductioncontent) {
        this.introductioncontent = introductioncontent;
    }

    public List<Horse> getHorses() {
        return horses;
    }

    public void setHorses(List<Horse> horses) {
        this.horses = horses;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    @Override
    public String execute() throws Exception {
        Sort order = new Sort(Sort.Direction.DESC, "order");

        if (StringHelp.isEmpty(type))
            horses = horseRepository.findByLang("en", order);
        else
            horses = horseRepository.findByTypeAndLang(type, "en", order);

        List<Horse> all = horseRepository.findAll(order);
        if (all.size() > 0) {
            count = all.get(0).getOrder();
        }
        else {
            count = 0;
        }

        Home home = homeRepository.findOneByName("introduction");
        if (home != null) {
            introductioncontent = home.getContent();
        }

        return SUCCESS;
    }
}
