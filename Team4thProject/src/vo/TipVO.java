package vo;
/*
 * Table TIP이(가) 생성되었습니다.

이름           널?       유형             
------------ -------- -------------- 
T_NO         NOT NULL NUMBER         
T_TITLE      NOT NULL VARCHAR2(1000) 
T_POSTER     NOT NULL VARCHAR2(1000) 
T_POSTER2             VARCHAR2(1000) 
T_REGDATE    NOT NULL VARCHAR2(500)  
T_PRECONTENT NOT NULL VARCHAR2(2000) 
T_CONTENT    NOT NULL CLOB           
T_WRITER     NOT NULL VARCHAR2(500)  
T_HIT                 NUMBER         
T_TAG                 VARCHAR2(500)  
T_CNO                 NUMBER         
T_COMMENT             CLOB           
T_ID                  VARCHAR2(500)  
T_PWD                 VARCHAR2(500)
 */
public class TipVO {
	private int t_no;
	private String t_title;
	private String t_poster;
	private String t_poster2;
	private String t_regdate;
	private String t_precontent;
	private String t_content;
	private String t_writer;
	private int t_hit;
	private String t_tag;
	private int t_cno;
	private String t_comment;
	private String t_id;
	private String t_pwd;
	public int getT_no() {
		return t_no;
	}
	public void setT_no(int t_no) {
		this.t_no = t_no;
	}
	public String getT_title() {
		return t_title;
	}
	public void setT_title(String t_title) {
		this.t_title = t_title;
	}
	public String getT_poster() {
		return t_poster;
	}
	public void setT_poster(String t_poster) {
		this.t_poster = t_poster;
	}
	public String getT_poster2() {
		return t_poster2;
	}
	public void setT_poster2(String t_poster2) {
		this.t_poster2 = t_poster2;
	}
	public String getT_regdate() {
		return t_regdate;
	}
	public void setT_regdate(String t_regdate) {
		this.t_regdate = t_regdate;
	}
	public String getT_precontent() {
		return t_precontent;
	}
	public void setT_precontent(String t_precontent) {
		this.t_precontent = t_precontent;
	}
	public String getT_content() {
		return t_content;
	}
	public void setT_content(String t_content) {
		this.t_content = t_content;
	}
	public String getT_writer() {
		return t_writer;
	}
	public void setT_writer(String t_writer) {
		this.t_writer = t_writer;
	}
	public int getT_hit() {
		return t_hit;
	}
	public void setT_hit(int t_hit) {
		this.t_hit = t_hit;
	}
	public String getT_tag() {
		return t_tag;
	}
	public void setT_tag(String t_tag) {
		this.t_tag = t_tag;
	}
	public int getT_cno() {
		return t_cno;
	}
	public void setT_cno(int t_cno) {
		this.t_cno = t_cno;
	}
	public String getT_comment() {
		return t_comment;
	}
	public void setT_comment(String t_comment) {
		this.t_comment = t_comment;
	}
	public String getT_id() {
		return t_id;
	}
	public void setT_id(String t_id) {
		this.t_id = t_id;
	}
	public String getT_pwd() {
		return t_pwd;
	}
	public void setT_pwd(String t_pwd) {
		this.t_pwd = t_pwd;
	}
}