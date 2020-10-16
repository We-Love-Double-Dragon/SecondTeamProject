package vo;
/*
 * company 테이블 (기업정보)
CNO       NOT NULL NUMBER         //기업번호
CNAME     NOT NULL VARCHAR2(100)  //기업명
CLOGO              VARCHAR2(500)  //기업로고
CTYPE              VARCHAR2(100)  //기업형태
CINDUTYPE          VARCHAR2(100)  //산업군
CLOC               VARCHAR2(100)  //기업주소
CSCORE             VARCHAR2(10)   //총평점
CDATE              VARCHAR2(100)  //설립일
WORKNUM            VARCHAR2(100)  //사원수
BNAME              VARCHAR2(100)  //대표이름
SALE               VARCHAR2(100)  //매출
COVER              CLOB           //기업소개
SITE               VARCHAR2(500)  //웹사이트
HISTORY            VARCHAR2(1000) //연혁
 */
public class ComVO {
	private int cno;
	private String cname;
	private String clogo;
	private String ctype;
	private String cindutype;
	private String cloc;
	private String cscore;
	private String sdate;
	private String worknum;
	private String bname;
	private String sale;
	private String cover;
	private String site;
	private String history;
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getClogo() {
		return clogo;
	}
	public void setClogo(String clogo) {
		this.clogo = clogo;
	}
	public String getCtype() {
		return ctype;
	}
	public void setCtype(String ctype) {
		this.ctype = ctype;
	}
	public String getCindutype() {
		return cindutype;
	}
	public void setCindutype(String cindutype) {
		this.cindutype = cindutype;
	}
	public String getCloc() {
		return cloc;
	}
	public void setCloc(String cloc) {
		this.cloc = cloc;
	}
	public String getCscore() {
		return cscore;
	}
	public void setCscore(String cscore) {
		this.cscore = cscore;
	}
	public String getSdate() {
		return sdate;
	}
	public void setSdate(String sdate) {
		this.sdate = sdate;
	}
	public String getWorknum() {
		return worknum;
	}
	public void setWorknum(String worknum) {
		this.worknum = worknum;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getSale() {
		return sale;
	}
	public void setSale(String sale) {
		this.sale = sale;
	}
	public String getCover() {
		return cover;
	}
	public void setCover(String cover) {
		this.cover = cover;
	}
	public String getSite() {
		return site;
	}
	public void setSite(String site) {
		this.site = site;
	}
	public String getHistory() {
		return history;
	}
	public void setHistory(String history) {
		this.history = history;
	}
	
	
}
