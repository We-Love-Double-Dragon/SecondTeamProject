package vo;
/* workreview 테이블 (재직자후기)
RNO      NOT NULL NUMBER        //리뷰번호
RTYPE             VARCHAR2(200) //직무
RLOC              VARCHAR2(200) //근무지역
RDATE    NOT NULL VARCHAR2(100) //작성일
RSCORE   NOT NULL VARCHAR2(20)  //개인평점
RCONTENT NOT NULL CLOB   		//리뷰내용
 */
public class WorkVO {
	private int rno;
	private String rtype;
	private String rloc;
	private String rdate;
	private String rscore;
	private String rcontent;
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public String getRtype() {
		return rtype;
	}
	public void setRtype(String rtype) {
		this.rtype = rtype;
	}
	public String getRloc() {
		return rloc;
	}
	public void setRloc(String rloc) {
		this.rloc = rloc;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	public String getRscore() {
		return rscore;
	}
	public void setRscore(String rscore) {
		this.rscore = rscore;
	}
	public String getRcontent() {
		return rcontent;
	}
	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}
	
}
