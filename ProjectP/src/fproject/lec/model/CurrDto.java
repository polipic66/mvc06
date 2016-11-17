package fproject.lec.model;

import java.util.Date;

public class CurrDto { // 커리큘럼 DTO
    private int currid;         // 커리큘럼 ID, 시퀀스
    private String userid;      // 회원 ID, 강사
    private String title;       // 커리큘럼 제목
    private int numofperson;    // 수강인원
    private String content;     // 커리큘럼 내용
    private int classcnt;       // 총 강의 갯수
    private Date currdate;      // 기록 일시

    public CurrDto() {
    }

    public CurrDto(int currid, String userid, String title, int numofperson, String content, int classcnt, Date currdate) {
        this.currid = currid;
        this.userid = userid;
        this.title = title;
        this.numofperson = numofperson;
        this.content = content;
        this.classcnt = classcnt;
        this.currdate = currdate;
    }

    public int getCurrid() {
        return currid;
    }

    public void setCurrid(int currid) {
        this.currid = currid;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getNumofperson() {
        return numofperson;
    }

    public void setNumofperson(int numofperson) {
        this.numofperson = numofperson;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getClasscnt() {
        return classcnt;
    }

    public void setClasscnt(int classcnt) {
        this.classcnt = classcnt;
    }

    public Date getCurrdate() {
        return currdate;
    }

    public void setCurrdate(Date currdate) {
        this.currdate = currdate;
    }

    @Override
    public String toString() {
        return "CurrDto{" +
                "currid=" + currid +
                ", userid='" + userid + '\'' +
                ", title='" + title + '\'' +
                ", numofperson=" + numofperson +
                ", content='" + content + '\'' +
                ", classcnt=" + classcnt +
                ", currdate=" + currdate +
                '}';
    }
}
