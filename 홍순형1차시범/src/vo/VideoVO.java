package com.sist.vo;
/*
 * Table VIDEO이(가) 생성되었습니다.

이름        널?       유형             
--------- -------- -------------- 
V_NO      NOT NULL NUMBER         
V_TITLE   NOT NULL VARCHAR2(1000) 
V_POSTER  NOT NULL VARCHAR2(1000) 
V_VIDEO   NOT NULL VARCHAR2(1000) 
V_REGDATE          VARCHAR2(500)  
V_CONTENT          CLOB           
V_WRITER           VARCHAR2(500)  
V_HIT              NUMBER         
V_TAG              VARCHAR2(500)  
V_CNO              NUMBER         
V_COMMENT          CLOB           
V_ID               VARCHAR2(500)  
V_PWD              VARCHAR2(500)  
 */
public class VideoVO {
	private int v_no;
	private String v_title;
	private String v_poster;
	private String v_video;
	private String v_regdate;
	private String v_content;
	private String v_writer;
	private int v_hit;
	private String v_tag;
	private int v_cno;
	private String v_comment;
	private String v_id;
	private String v_pwd;
	public int getV_no() {
		return v_no;
	}
	public void setV_no(int v_no) {
		this.v_no = v_no;
	}
	public String getV_title() {
		return v_title;
	}
	public void setV_title(String v_title) {
		this.v_title = v_title;
	}
	public String getV_poster() {
		return v_poster;
	}
	public void setV_poster(String v_poster) {
		this.v_poster = v_poster;
	}
	public String getV_video() {
		return v_video;
	}
	public void setV_video(String v_video) {
		this.v_video = v_video;
	}
	public String getV_regdate() {
		return v_regdate;
	}
	public void setV_regdate(String v_regdate) {
		this.v_regdate = v_regdate;
	}
	public String getV_content() {
		return v_content;
	}
	public void setV_content(String v_content) {
		this.v_content = v_content;
	}
	public String getV_writer() {
		return v_writer;
	}
	public void setV_writer(String v_writer) {
		this.v_writer = v_writer;
	}
	public int getV_hit() {
		return v_hit;
	}
	public void setV_hit(int v_hit) {
		this.v_hit = v_hit;
	}
	public String getV_tag() {
		return v_tag;
	}
	public void setV_tag(String v_tag) {
		this.v_tag = v_tag;
	}
	public int getV_cno() {
		return v_cno;
	}
	public void setV_cno(int v_cno) {
		this.v_cno = v_cno;
	}
	public String getV_comment() {
		return v_comment;
	}
	public void setV_comment(String v_comment) {
		this.v_comment = v_comment;
	}
	public String getV_id() {
		return v_id;
	}
	public void setV_id(String v_id) {
		this.v_id = v_id;
	}
	public String getV_pwd() {
		return v_pwd;
	}
	public void setV_pwd(String v_pwd) {
		this.v_pwd = v_pwd;
	}
}