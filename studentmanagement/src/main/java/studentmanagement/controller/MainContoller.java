package studentmanagement.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;


import studentmanagement.dao.StudentDao;
import studentmanagement.model.Student;

@Controller
public class MainContoller {
	
	@Autowired
	private StudentDao studentDao;
	
	//To get all student details
	@RequestMapping("/")
	public String home(Model m) {
		List<Student> students = studentDao.getStudents();
		m.addAttribute("students", students);
		return "index";
	}
	
	//show add student form
		@RequestMapping("/add-student")
		public String addStudent(Model m) {
			m.addAttribute("title", "Add Student");
			return "add_student_form";
		}
	
		//handle add student form
		@RequestMapping(value="/handle-student",method = RequestMethod.POST)
		public RedirectView handleSudent(@ModelAttribute Student student,HttpServletRequest request) {
			System.out.println(student);
			this.studentDao.createStudent(student);
			RedirectView redirectView = new RedirectView();
			redirectView.setUrl(request.getContextPath() + "/");
			return redirectView;
		}
		
		//delete handler
		@RequestMapping("/delete/{sid}")
		public RedirectView deleteStudent(@PathVariable("sid") int sid,HttpServletRequest request) {
			this.studentDao.deleteStudent(sid);
			RedirectView redirectView = new RedirectView();
			redirectView.setUrl(request.getContextPath() + "/");
			return redirectView;
		}
		
		//update handler
		@RequestMapping("/update/{sid}")
		public String updateForm(@PathVariable("sid") int sid,Model model) {
			Student student = this.studentDao.getStudent(sid);
			model.addAttribute("student", student);
			return "update_form";
		}

}
