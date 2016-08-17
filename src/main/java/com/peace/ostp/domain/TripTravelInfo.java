package com.peace.ostp.domain;

public class TripTravelInfo {
    private String travelid;

    private String travelname;

    private String sporttypeid;

    private String attention;

    private String guide;

    private String enabled;

    public String getTravelid() {
        return travelid;
    }

    public void setTravelid(String travelid) {
        this.travelid = travelid;
    }

    public String getTravelname() {
        return travelname;
    }

    public void setTravelname(String travelname) {
        this.travelname = travelname;
    }

    public String getSporttypeid() {
        return sporttypeid;
    }

    public void setSporttypeid(String sporttypeid) {
        this.sporttypeid = sporttypeid;
    }

    public String getAttention() {
        return attention;
    }

    public void setAttention(String attention) {
        this.attention = attention;
    }

    public String getGuide() {
        return guide;
    }

    public void setGuide(String guide) {
        this.guide = guide;
    }

    public String getEnabled() {
        return enabled;
    }

    public void setEnabled(String enabled) {
        this.enabled = enabled;
    }
}