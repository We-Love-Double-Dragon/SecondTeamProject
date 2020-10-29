package model;

import javax.servlet.http.HttpServletRequest;

import com.sist.controller.RequestMapping;

import dao.ResumeDAO;
import vo.ResumeVO;

public class ResumeModel {
	 @RequestMapping("resume/resume.do")
	   public String resume_resume(HttpServletRequest request)
	   {
		   request.setAttribute("main_jsp", "../resume/resume.jsp");
		   return "../main/main.jsp";
	   }
	 
	 @RequestMapping("resume/resume_ok.do")
	 public String resume_resume_ok(HttpServletRequest request)
	 {
		 System.out.println("resume_ok..");
		 try {
			 request.setCharacterEncoding("UTF-8");
		 }catch (Exception ex) {}
		 
		 String id=request.getParameter("id");
		 String photo=request.getParameter("photo");
		 String stype=request.getParameter("stype");
		 String sname=request.getParameter("sname");
		 String smajor=request.getParameter("smajor");
		 String btype=request.getParameter("btype");
		 String bname=request.getParameter("bname");
		 String bdate=request.getParameter("bdate");
		 String cname=request.getParameter("cname");
		 String cdate=request.getParameter("cdate");
		 String cl=request.getParameter("cl");
		 
		 ResumeVO vo=new ResumeVO();
		 vo.setId(id);
		 vo.setPhoto(photo);
		 vo.setStype(stype);
		 vo.setSname(sname);
		 vo.setSmajor(smajor);
		 vo.setBtype(btype);
		 vo.setBname(bname);
		 vo.setBdate(bdate);
		 vo.setCname(cname);
		 vo.setCdate(cdate);
		 vo.setCl(cl);
		 ResumeDAO.resumeInsert(vo);
		 
		 return "../resume/resume_ok.jsp";
	 }
}