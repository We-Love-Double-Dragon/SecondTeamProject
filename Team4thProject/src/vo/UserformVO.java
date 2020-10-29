package vo;
/*
	ID          VARCHAR2(20)  
	PWD         VARCHAR2(10)  
	NAME        VARCHAR2(34)  
	EMAIL       VARCHAR2(100) 
	BIRTHDAY    VARCHAR2(20)  
	SEX         VARCHAR2(10)  
	POST        VARCHAR2(10)  
	ADDR1       VARCHAR2(200) 
	ADDR2       VARCHAR2(100) 
	TEL         VARCHAR2(20)  
	ADMIN       CHAR(1)      
 */
public class UserformVO {
	private String id;
	private String pwd;
	private String name;
	private String email;
	private String birthday;
	private String sex;
	private String post;
	private String addr1;
	private String addr2;
	private String tel;
	private String admin;
	private String msg;
	
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAdmin() {
		return admin;
	}
	public void setAdmin(String admin) {
		this.admin = admin;
	}
}