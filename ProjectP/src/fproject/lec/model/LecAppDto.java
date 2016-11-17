package fproject.lec.model;

import java.util.Date;

public class LecAppDto {    // LECAPP 수강신청 DTO
    int appidx;     // 수강신청 인덱스
    String userid;  // 학생 아이디
    int currid;     // 커리큘럼 아이디
    String permit;  // 수강 신청 승인 여부
    Date appdate;   // 기록 일시

    public LecAppDto() {
    }

    public LecAppDto(int appidx, String userid, int currid, String permit, Date appdate) {
        this.appidx = appidx;
        this.userid = userid;
        this.currid = currid;
        this.permit = permit;
        this.appdate = appdate;
    }

    public int getAppidx() {
        return appidx;
    }

    public void setAppidx(int appidx) {
        this.appidx = appidx;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public int getCurrid() {
        return currid;
    }

    public void setCurrid(int currid) {
        this.currid = currid;
    }

    public String getPermit() {
        return permit;
    }

    public void setPermit(String permit) {
        this.permit = permit;
    }

    public Date getAppdate() {
        return appdate;
    }

    public void setAppdate(Date appdate) {
        this.appdate = appdate;
    }

    @Override
    public String toString() {
        return "LecAppDto{" +
                "appidx=" + appidx +
                ", userid='" + userid + '\'' +
                ", currid=" + currid +
                ", permit='" + permit + '\'' +
                ", appdate=" + appdate +
                '}';
    }
}
