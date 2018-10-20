package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import model.Dept;
import model.Emp;
import model.Files;
import model.Job;
import model.Notice;
import model.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.DeptMapper;
import dao.EmpMapper;
import dao.FilesMapper;
import dao.JobMapper;
import dao.NoticeMapper;
import dao.UserMapper;

@Controller
public class BaseController {
	
	
	
	private UserMapper userMapper;
	private DeptMapper deptMapper;
	private JobMapper jobMapper;
	private EmpMapper empMapper;
	private NoticeMapper noticeMapper;
	private FilesMapper filesMapper;
	
	
	public FilesMapper getFilesMapper() {
		return filesMapper;
	}
	@Autowired
	public void setFilesMapper(FilesMapper filesMapper) {
		this.filesMapper = filesMapper;
	}
	public NoticeMapper getNoticeMapper() {
		return noticeMapper;
	}
	@Autowired
	public void setNoticeMapper(NoticeMapper noticeMapper) {
		this.noticeMapper = noticeMapper;
	}
	public EmpMapper getEmpMapper() {
		return empMapper;
	}
	@Autowired
	public void setEmpMapper(EmpMapper empMapper) {
		this.empMapper = empMapper;
	}
	public JobMapper getJobMapper() {
		return jobMapper;
	}
	@Autowired
	public void setJobMapper(JobMapper jobMapper) {
		this.jobMapper = jobMapper;
	}
	
	public UserMapper getUserMapper() {
		return userMapper;
	}
	@Autowired
	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}
	
	
	
	
	public DeptMapper getDeptMapper() {
		return deptMapper;
	}
	@Autowired
	public void setDeptMapper(DeptMapper deptMapper) {
		this.deptMapper = deptMapper;
	}
	@RequestMapping("adminLogin")
	public String adminLogin(HttpServletRequest request){
		try {
			String id = request.getParameter("id");
			String mima = request.getParameter("mima");
			User user = new User();
			user.setId(id);
			user.setMima(mima);
			user.setType("admin");
			List<User> list = userMapper.adminLogin(user);
			System.out.println(list.size());
			if(list.size()>0){
				user = list.get(0);
				request.getSession().setAttribute("user", user);
				System.out.println(user.getType());
				if("管理员".equals(user.getType())){
					return "admin/index";
				}else{
					return "login";
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("InfoMessage", "信息载入失败！具体异常信息：" + e.getMessage());
		}
		return "login";
	}
	
	
	@RequestMapping("admin/getAllUser")
	public String getAllUser(HttpServletRequest request){
		try {
			String name = request.getParameter("name");
			User u = new User();
			if(name !=null){
				u.setName("%"+name+"%");
			}
			List<User> list = userMapper.getAllUserForAdmin(u);
			request.setAttribute("list", list);
				return "admin/user_list";
				
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("InfoMessage", "信息载入失败！具体异常信息：" + e.getMessage());
		}
		return "admin/login";
	}
	
	
	
	
	
	
	
	
	
	@RequestMapping("admin/getAllDept")
	public String getAllDept(HttpServletRequest request){
		try {
			String name = request.getParameter("name");
			Dept u = new Dept();
			if(name !=null){
				u.setName("%"+name+"%");
			}
			List<Dept> list = deptMapper.getAll(u);
			request.setAttribute("list", list);
				return "admin/dept_list";
				
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("InfoMessage", "信息载入失败！具体异常信息：" + e.getMessage());
		}
		return "admin/login";
	}
	
	

	
	
	
	
	
	
	@RequestMapping("admin/getAllEmp")
	public String getAllEmp(HttpServletRequest request){
		try {
			String name = request.getParameter("name");
			String idcard = request.getParameter("idcard");
			String tel = request.getParameter("tel");
			String job = request.getParameter("job");
			
			Emp u = new Emp();
			if(name !=null){
				u.setName("%"+name+"%");
			}
			if(idcard !=null){
				u.setIdcard("%"+idcard+"%");
			}
			if(tel !=null){
				u.setTel("%"+tel+"%");
			}
			if(job !=null){
				u.setJob("%"+job+"%");
			}
			List<Emp> list = empMapper.getAll(u);
			request.setAttribute("list", list);
				return "admin/emp_list";
				
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("InfoMessage", "信息载入失败！具体异常信息：" + e.getMessage());
		}
		return "admin/login";
	}
	
	
	
	
	
	@RequestMapping("admin/getAllJob")
	public String getAllJob(HttpServletRequest request){
		try {
			String name = request.getParameter("name");
			Job u = new Job();
			if(name !=null){
				u.setName("%"+name+"%");
			}
			List<Job> list = jobMapper.getAll(u);
			request.setAttribute("list", list);
				return "admin/job_list";
				
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("InfoMessage", "信息载入失败！具体异常信息：" + e.getMessage());
		}
		return "admin/login";
	}
	
	

	
	@RequestMapping("admin/getAllNotice")
	public String getAllNotice(HttpServletRequest request){
		try {
			String name = request.getParameter("name");
			Notice u = new Notice();
			if(name !=null){
				u.setName("%"+name+"%");
			}
			List<Notice> list = noticeMapper.getAll(u);
			request.setAttribute("list", list);
				return "admin/notice_list";
				
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("InfoMessage", "信息载入失败！具体异常信息：" + e.getMessage());
		}
		return "admin/login";
	}
	
	


	
	@RequestMapping("admin/getAllFiles")
	public String getAllFiles(HttpServletRequest request){
		try {
			String name = request.getParameter("name");
			Files u = new Files();
			if(name !=null){
				u.setName("%"+name+"%");
			}
			List<Files> list = filesMapper.getAll(u);
			request.setAttribute("list", list);
				return "admin/files_list";
				
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("InfoMessage", "信息载入失败！具体异常信息：" + e.getMessage());
		}
		return "admin/login";
	}
	
	
	
	

}
