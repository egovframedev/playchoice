package com.playchoice.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	// ���� ������ �ε�
	@RequestMapping("page/main")
	String getmain() {
		return "main";
	}

	// ��ü ���� ����Ʈ �ε�
	@RequestMapping("page/mainlist")
	String getlist() {
		return "page/mainlist";
	}
}
