package vo;
/* selfletter 테이블 (합격자소서)
SNO       NOT NULL NUMBER        //자소서번호
SSUBJECT  NOT NULL VARCHAR2(100) //글제목
SNAME              VARCHAR2(100) //기업명
SINDUTYPE          VARCHAR2(100) //직종
SCONTENT  NOT NULL CLOB   		 //자기소개서 내용
 */
public class SelfVO {
	private int sno;
	private String ssubject;
	private String sname;
	private String sindutype;
	private String scontent;
	public int getSno() {
		return sno;
	}
	public void setSno(int sno) {
		this.sno = sno;
	}
	public String getSsubject() {
		return ssubject;
	}
	public void setSsubject(String ssubject) {
		this.ssubject = ssubject;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSindutype() {
		return sindutype;
	}
	public void setSindutype(String sindutype) {
		this.sindutype = sindutype;
	}
	public String getScontent() {
		return scontent;
	}
	public void setScontent(String scontent) {
		this.scontent = scontent;
	}
	
}
