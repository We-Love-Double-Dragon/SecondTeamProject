package vo;
/* intreview 테이블 (면접후기)
INO      NOT NULL NUMBER        //리뷰번호
ISCORE   NOT NULL VARCHAR2(50)  //면접난이도
INTDATE  NOT NULL VARCHAR2(100) //면접일자
IREGDATE NOT NULL VARCHAR2(100) //작성일
ICONTENT NOT NULL CLOB          //리뷰내용
IRESULT           VARCHAR2(10)  //면접결과
 */
public class IntVO {
	private int ino;
	private String iscore;
	private String intdate;
	private String iregdate;
	private String icontent;
	private String iresult;
	public int getIno() {
		return ino;
	}
	public void setIno(int ino) {
		this.ino = ino;
	}
	public String getIscore() {
		return iscore;
	}
	public void setIscore(String iscore) {
		this.iscore = iscore;
	}
	public String getIntdate() {
		return intdate;
	}
	public void setIntdate(String intdate) {
		this.intdate = intdate;
	}
	public String getIregdate() {
		return iregdate;
	}
	public void setIregdate(String iregdate) {
		this.iregdate = iregdate;
	}
	public String getIcontent() {
		return icontent;
	}
	public void setIcontent(String icontent) {
		this.icontent = icontent;
	}
	public String getIresult() {
		return iresult;
	}
	public void setIresult(String iresult) {
		this.iresult = iresult;
	}
	
}
