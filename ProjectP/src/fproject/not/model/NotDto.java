package fproject.not.model;

import java.util.Date;

public class NotDto {   // 공지사항 NOT DTO
    private int idx;        // 인덱스
    private String userid;  // 등록자 아이디
    private String subject; // 제목
    private String content; // 공지내용
    private Date notdate;   // 작성날짜

    public NotDto() {
    }

    public NotDto(int idx, String userid, String subject, String content, Date notdate) {
        this.idx = idx;
        this.userid = userid;
        this.subject = subject;
        this.content = content;
        this.notdate = notdate;
    }

    public int getIdx() {
        return idx;
    }

    public void setIdx(int idx) {
        this.idx = idx;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getNotdate() {
        return notdate;
    }

    public void setNotdate(Date notdate) {
        this.notdate = notdate;
    }

    @Override
    public String toString() {
        return "NotDto{" +
                "idx=" + idx +
                ", userid='" + userid + '\'' +
                ", subject='" + subject + '\'' +
                ", content='" + content + '\'' +
                ", notdate=" + notdate +
                '}';
    }
}
