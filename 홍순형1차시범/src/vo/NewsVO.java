package com.sist.vo;
/*
 * Table NEWS이(가) 생성되었습니다.

이름           널?       유형             
------------ -------- -------------- 
N_NO         NOT NULL NUMBER         
N_TITLE      NOT NULL VARCHAR2(1000) 
N_POSTER     NOT NULL VARCHAR2(1000) 
N_REGDATE    NOT NULL VARCHAR2(500)  
N_PRECONTENT NOT NULL VARCHAR2(2000) 
N_CONTENT    NOT NULL CLOB           
N_WRITER     NOT NULL VARCHAR2(500)  
N_HIT                 NUMBER         
N_TAG                 VARCHAR2(500)  
N_CNO                 NUMBER         
N_COMMENT             CLOB           
N_ID                  VARCHAR2(500)  
N_PWD                 VARCHAR2(500) 
 */
public class NewsVO {
	private int n_no;
	private String n_title;
	private String n_poster;
	private String n_regdate;
	private String n_precontent;
	private String n_content;
	private String n_writer;
	private int n_hit;
	private String n_tag;
	private int n_cno;
	private String n_comment;
	private String n_id;
	private String n_pwd;
	public int getN_no() {
		return n_no;
	}
	public void setN_no(int n_no) {
		this.n_no = n_no;
	}
	public String getN_title() {
		return n_title;
	}
	public void setN_title(String n_title) {
		this.n_title = n_title;
	}
	public String getN_poster() {
		return n_poster;
	}
	public void setN_poster(String n_poster) {
		this.n_poster = n_poster;
	}
	public String getN_regdate() {
		return n_regdate;
	}
	public void setN_regdate(String n_regdate) {
		this.n_regdate = n_regdate;
	}
	public String getN_precontent() {
		return n_precontent;
	}
	public void setN_precontent(String n_precontent) {
		this.n_precontent = n_precontent;
	}
	public String getN_content() {
		return n_content;
	}
	public void setN_content(String n_content) {
		this.n_content = n_content;
	}
	public String getN_writer() {
		return n_writer;
	}
	public void setN_writer(String n_writer) {
		this.n_writer = n_writer;
	}
	public int getN_hit() {
		return n_hit;
	}
	public void setN_hit(int n_hit) {
		this.n_hit = n_hit;
	}
	public String getN_tag() {
		return n_tag;
	}
	public void setN_tag(String n_tag) {
		this.n_tag = n_tag;
	}
	public int getN_cno() {
		return n_cno;
	}
	public void setN_cno(int n_cno) {
		this.n_cno = n_cno;
	}
	public String getN_comment() {
		return n_comment;
	}
	public void setN_comment(String n_comment) {
		this.n_comment = n_comment;
	}
	public String getN_id() {
		return n_id;
	}
	public void setN_id(String n_id) {
		this.n_id = n_id;
	}
	public String getN_pwd() {
		return n_pwd;
	}
	public void setN_pwd(String n_pwd) {
		this.n_pwd = n_pwd;
	}
}