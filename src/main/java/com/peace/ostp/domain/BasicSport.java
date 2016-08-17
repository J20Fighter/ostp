package com.peace.ostp.domain;

public class BasicSport {
    private String sportid;

    private String sporttypeid;

    private String sportname;

    private String sportkeywords;

    private String sportnote;

    private String enabled;

    public String getSportid() {
        return sportid;
    }

    public void setSportid(String sportid) {
        this.sportid = sportid;
    }

    public String getSporttypeid() {
        return sporttypeid;
    }

    public void setSporttypeid(String sporttypeid) {
        this.sporttypeid = sporttypeid;
    }

    public String getSportname() {
        return sportname;
    }

    public void setSportname(String sportname) {
        this.sportname = sportname;
    }

    public String getSportkeywords() {
        return sportkeywords;
    }

    public void setSportkeywords(String sportkeywords) {
        this.sportkeywords = sportkeywords;
    }

    public String getSportnote() {
        return sportnote;
    }

    public void setSportnote(String sportnote) {
        this.sportnote = sportnote;
    }

    public String getEnabled() {
        return enabled;
    }

    public void setEnabled(String enabled) {
        this.enabled = enabled;
    }
}