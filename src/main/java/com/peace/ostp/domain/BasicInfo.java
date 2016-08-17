package com.peace.ostp.domain;

import java.util.Date;

public class BasicInfo {
    private String infoId;

    private String author;

    private String title;

    private String firstlevelinfotypeid;

    private String secondlevelinfotypeid;

    private String sporttypeid;

    private String copyfrom;

    private String keywords;

    private String content;

    private String imgurl;

    private Date createtime;

    private String enabled;

    public String getInfoId() {
        return infoId;
    }

    public void setInfoId(String infoId) {
        this.infoId = infoId;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getFirstlevelinfotypeid() {
        return firstlevelinfotypeid;
    }

    public void setFirstlevelinfotypeid(String firstlevelinfotypeid) {
        this.firstlevelinfotypeid = firstlevelinfotypeid;
    }

    public String getSecondlevelinfotypeid() {
        return secondlevelinfotypeid;
    }

    public void setSecondlevelinfotypeid(String secondlevelinfotypeid) {
        this.secondlevelinfotypeid = secondlevelinfotypeid;
    }

    public String getSporttypeid() {
        return sporttypeid;
    }

    public void setSporttypeid(String sporttypeid) {
        this.sporttypeid = sporttypeid;
    }

    public String getCopyfrom() {
        return copyfrom;
    }

    public void setCopyfrom(String copyfrom) {
        this.copyfrom = copyfrom;
    }

    public String getKeywords() {
        return keywords;
    }

    public void setKeywords(String keywords) {
        this.keywords = keywords;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImgurl() {
        return imgurl;
    }

    public void setImgurl(String imgurl) {
        this.imgurl = imgurl;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public String getEnabled() {
        return enabled;
    }

    public void setEnabled(String enabled) {
        this.enabled = enabled;
    }
}