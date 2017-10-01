package cn.pojo;

import java.util.Date;

public class ReplyDetail {
    private Integer id;

    private Integer invid;

    private String content;

    private String author;

    private Date createdate;
    public ReplyDetail() {
    	
    }
    public ReplyDetail(Integer invid, String content, String author, Date createdate) {
		this.invid = invid;
		this.content = content;
		this.author = author;
		this.createdate = createdate;
	}



	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getInvid() {
        return invid;
    }

    public void setInvid(Integer invid) {
        this.invid = invid;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author == null ? null : author.trim();
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }
}