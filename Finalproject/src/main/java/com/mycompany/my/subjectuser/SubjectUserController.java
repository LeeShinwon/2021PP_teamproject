package com.mycompany.my.subjectuser;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mycompany.my.board.SubjectService;
import com.mycompany.my.board.SubjectVO;

@Controller
public class SubjectUserController {

	@Autowired
	SubjectUserService userService;
	@Autowired
	SubjectService subjectService;

	@RequestMapping(value = "/subjectuser/list", method = RequestMethod.GET)
	public String userlist(Model model, HttpServletRequest request) {
		// model.addAttribute("list", userService.getUserList());

		List<SubjectUserVO> l = new ArrayList<SubjectUserVO>();
		HttpSession session = request.getSession();

		for (SubjectUserVO vo : userService.getUserList()) {

			if (vo.getUserid().equals((session).getAttribute("login"))) {
				l.add(vo);

			}

		}
		model.addAttribute("list", l);

		return "list";
	}
	@RequestMapping(value = "/subjectuser/{semester}", method = RequestMethod.GET)
	public String usersemesterlist(Model model, HttpServletRequest request,@PathVariable("semester") int semester) {
		System.out.println(semester);

		List<SubjectUserVO> l = new ArrayList<SubjectUserVO>();
		HttpSession session = request.getSession();

		for (SubjectUserVO vo : userService.getUserList()) {

			if (vo.getUserid().equals((session).getAttribute("login"))&&vo.getSemester()==semester) {
				l.add(vo);

			}

		}
		model.addAttribute("list", l);

		return "list";
	}

	@RequestMapping(value = "/subjectuser/add", method = RequestMethod.GET)
	public String addPost(Model model) {
		model.addAttribute("addpostform", subjectService.getSubjectList());

		return "addpostform";
	}

	@RequestMapping(value = "/subjectuser/add/{id}", method = RequestMethod.GET)
	public String addPostform(@PathVariable("id") int id, Model model, HttpServletRequest request) {
		model.addAttribute("userid", request.getSession().getAttribute("login"));

		SubjectVO subjectVO = subjectService.getSubject(id);
		model.addAttribute("subjectVO", subjectVO);
		// System.out.println(subjectVO.getArea1());
		// System.out.println(userService.getUserList().get(0).getUserid());
		return "addpostform2";
	}
	
	@RequestMapping(value = "/subjectuser/addok", method = RequestMethod.GET)
	public String addPostOK(SubjectUserVO vo) {
		System.out.println(vo.getArea1());


		return "redirect:list";
	}
	
	

	@RequestMapping(value = "/subjectuser/course1", method = RequestMethod.GET)
	public String course(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();

		model.addAttribute("list", (session).getAttribute("login"));

		


		return "list";
	}

	@RequestMapping(value = "/subjectuser/search", method = RequestMethod.GET)
	public String search(Model model, HttpServletRequest request) {
		String area = request.getParameter("area");
		String separ = request.getParameter("separ");
		String subname = request.getParameter("subname");

		List<SubjectVO> l = new ArrayList<SubjectVO>();
		List<SubjectVO> l2 = new ArrayList<SubjectVO>();

		if (area.equals("전체") && separ.equals("전체")) {
			l = subjectService.getSubjectList();

		} else if (!area.equals("전체") && separ.equals("전체")) {
			l = subjectService.getSubjectListS(area);
		} else if (area.equals("전체") && !separ.equals("전체")) {
			for (SubjectVO vo : subjectService.getSubjectList()) {
				if (vo.getSepar().equals(separ))
					l.add(vo);
			}
		} else if (!area.equals("전체") && !separ.equals("전체")) {
			for (SubjectVO vo : subjectService.getSubjectListS(area)) {
				if (vo.getSepar().equals(separ))
					l.add(vo);
			}
		}

		if (!subname.equals("")) {
			for (SubjectVO vo : l) {
				if (vo.getSubname().contains(subname))
					l2.add(vo);
			}
			model.addAttribute("addpostform", l2);
		} else {
			model.addAttribute("addpostform", l);
		}

		return "addpostform";
	}
	
	@RequestMapping(value = "/subjectuser/deleteok/{id}", method = RequestMethod.GET)
	public String deletePost(@PathVariable("id") int id) {
		int i = userService.deleteUser(id);
		if(i==0) {
			System.out.println("데이터 삭제  실패 ");
			
		}
		else {
			System.out.println("데이터 삭제 성공 ");
		}
		
		return "redirect:../list";
	}

}
