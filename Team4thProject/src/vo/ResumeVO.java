package vo;


/*
	ID        VARCHAR2(20)  
	PHOTO     VARCHAR2(100) 
	STYPE     VARCHAR2(50)  
	SNAME     VARCHAR2(50)  
	SMAJOR    VARCHAR2(100) 
	BTYPE     VARCHAR2(100) 
	BNAME     VARCHAR2(100) 
	BDATE     VARCHAR2(30)  
	CNAME     VARCHAR2(100) 
	CDATE     VARCHAR2(30)  
	CL        CLOB          
 */
public class ResumeVO {
	private String id;
	private String photo;
	private String stype;
	private String sname;
	private String smajor;
	private String btype;
	private String bname;
	private String bdate;
	private String cname;
	private String cdate;
	private String cl;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getStype() {
		return stype;
	}
	public void setStype(String stype) {
		this.stype = stype;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSmajor() {
		return smajor;
	}
	public void setSmajor(String smajor) {
		this.smajor = smajor;
	}
	public String getBtype() {
		return btype;
	}
	public void setBtype(String btype) {
		this.btype = btype;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getBdate() {
		return bdate;
	}
	public void setBdate(String bdate) {
		this.bdate = bdate;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCdate() {
		return cdate;
	}
	public void setCdate(String cdate) {
		this.cdate = cdate;
	}
	public String getCl() {
		return cl;
	}
	public void setCl(String cl) {
		this.cl = cl;
	}
}
