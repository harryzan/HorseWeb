package com.horseweb.core.domain;

/**
 * Created with IntelliJ IDEA.
 * User: zhanyonglin
 * Date: 12-9-21
 * Time: 上午10:29
 * To change this template use File | Settings | File Templates.
 */
public class Introduction extends BaseDomain {
    private String name;

    private Integer order;

    private String anchor;

    private String Content;

    private String lang;

    public String getLang() {
        return lang;
    }

    public void setLang(String lang) {
        this.lang = lang;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getOrder() {
        return order;
    }

    public void setOrder(Integer order) {
        this.order = order;
    }

    public String getAnchor() {
        return anchor;
    }

    public void setAnchor(String anchor) {
        this.anchor = anchor;
    }

    public String getContent() {
        return Content;
    }

    public void setContent(String content) {
        Content = content;
    }
}
