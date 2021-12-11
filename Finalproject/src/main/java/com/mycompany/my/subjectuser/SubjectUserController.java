package com.mycompany.my.subjectuser;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mycompany.my.board.SubjectService;
import com.mycompany.my.board.SubjectVO;


@Controller
public class SubjectUserController {
	@Autowired
	SubjectUserService userService;
	@Autowired
	SubjectService subjectService;

	@RequestMapping(value = "/subjectuser/list", method = RequestMethod.GET)
	public String userlist(Model model) {
		model.addAttribute("list", userService.getUserList());
		model.addAttribute("sub", subjectService.getSubjectList());
		return "list";
	}

	@RequestMapping(value = "/subjectuser/add", method = RequestMethod.GET)
	public String addPost() {
		return "addpostform";
	}
}

