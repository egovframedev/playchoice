package com.playchoice.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.playchoice.admin.service.AdminService;

/**
 * 사이트 관리자 메뉴 사용자 관리, 배우 관리...
 */
@Controller
@RequestMapping("admin/site")
public class SiteAdminController {

//	@Autowired
//	AdminService adminService;

	@RequestMapping("")
	public String adminMainController() {
		return "admin_main";
	}

	@RequestMapping("member/common")
	public String memberCommonController() {

		return "admin_member";
	}

	@RequestMapping("member/playadmin")
	public String memberPlayAdminController() {

		return "admin_member";
	}

	@RequestMapping("member/{m_id}")
	public String memberDetailController(@PathVariable("m_id") int m_id) {
		return "";
	}

	// ajax
	@RequestMapping("member/Black")
	public ResponseEntity<String> memberBlackController(@RequestParam("id") int m_id) {

		return null;
	}

	// ajax
	@RequestMapping("member/unBlack")
	public ResponseEntity<String> memberUnBlackController(@RequestParam("id") int m_id) {

		return null;
	}

	@RequestMapping(value = "actor/add", method = RequestMethod.GET)
	public String addActorFormController() {

		return "";
	}

	@RequestMapping(value = "actor/add", method = RequestMethod.POST)
	public String addActorActionController() {

		return "";
	}

	@RequestMapping(value = "actor/update", method = RequestMethod.GET)
	public String updateActorFormController() {

		return "";
	}

	@RequestMapping(value = "actor/update", method = RequestMethod.POST)
	public String updateActorActionController() {

		return "";
	}

	@RequestMapping(value = "actor/delete", method = RequestMethod.POST)
	public String deleteActorActionController() {

		return "";
	}

	@RequestMapping("play")
	public String playListController() {
		return "";
	}

	@RequestMapping("play/detail")
	public String playDetailController(@RequestParam("id") int p_id) {

		return "";
	}

	@RequestMapping("play/detach")
	public String playDetachController(@RequestParam("id") int p_id) {
		return "";
	}

	@RequestMapping("notice")
	public String noticeListController(@RequestParam(value = "page", defaultValue = "1") int page) {
		return "";
	}

	@RequestMapping("notice/detail")
	public String noticeDetailController(@RequestParam int no) {

		return "";
	}

	@RequestMapping("notice/update")
	public String noticeUpdateController(@RequestParam int no) {

		return "";
	}

	@RequestMapping("notice/write")
	public String noticeWriteController() {

		return "";
	}

	@RequestMapping(value = "notice/delete", method = RequestMethod.POST) // post?
	public String noticeDeleteController() {

		return "";
	}

	@RequestMapping("FAQ")
	public String FAQListController(@RequestParam(value = "page", defaultValue = "1") int page) {
		return "";
	}

	@RequestMapping("FAQ/detail")
	public String FAQDetailController(@RequestParam int no) {
		return "";
	}

	@RequestMapping("FAQ/update")
	public String FAQUpdateController(@RequestParam int no) {
		return "";
	}

	@RequestMapping("FAQ/write")
	public String FAQWriteController() {
		return "";
	}

	@RequestMapping("FAQ/delete")
	public String FAQDeleteController() {
		return "";
	}

	@RequestMapping("contact")
	public String contactListController(@RequestParam(value = "page", defaultValue = "1") int page) {
		return "";
	}

	@RequestMapping("contact/detail")
	public String contactDetailController(@RequestParam int no) {
		return "";
	}

	@RequestMapping("contact/update")
	public String contactUpdateController(@RequestParam int no) {
		return "";
	}

	@RequestMapping("contact/answer")
	public String contactWriteController(@RequestParam int no) {
		return "";
	}

	@RequestMapping("contact/delete")
	public String contactDeleteController() {
		return "";
	}

}
