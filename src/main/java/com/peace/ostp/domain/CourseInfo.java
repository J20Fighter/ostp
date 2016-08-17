package com.peace.ostp.domain;

import java.util.Date;

public class CourseInfo {
    private String courseid;

    private String coursetitle;

    private String courseauthor;

    private Date updatetime;

    private String content;

    private String coursetypeid;

    private String sporttypeid;

    private String clicktimes;

    private String keywords;

    private String enabled;

    public String getCourseid() {
        return courseid;
    }

    public void setCourseid(String courseid) {
        this.courseid = courseid;
    }

    public String getCoursetitle() {
        return coursetitle;
    }

    public void setCoursetitle(String coursetitle) {
        this.coursetitle = coursetitle;
    }

    public String getCourseauthor() {
        return courseauthor;
    }

    public void setCourseauthor(String courseauthor) {
        this.courseauthor = courseauthor;
    }

    public Date getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getCoursetypeid() {
        return coursetypeid;
    }

    public void setCoursetypeid(String coursetypeid) {
        this.coursetypeid = coursetypeid;
    }

    public String getSporttypeid() {
        return sporttypeid;
    }

    public void setSporttypeid(String sporttypeid) {
        this.sporttypeid = sporttypeid;
    }

    public String getClicktimes() {
        return clicktimes;
    }

    public void setClicktimes(String clicktimes) {
        this.clicktimes = clicktimes;
    }

    public String getKeywords() {
        return keywords;
    }

    public void setKeywords(String keywords) {
        this.keywords = keywords;
    }

    public String getEnabled() {
        return enabled;
    }

    public void setEnabled(String enabled) {
        this.enabled = enabled;
    }
}