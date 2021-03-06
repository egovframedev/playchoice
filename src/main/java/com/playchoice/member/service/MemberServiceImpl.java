package com.playchoice.member.service;

import java.util.Random;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.playchoice.member.dao.MemberDAO;
import com.playchoice.member.dto.LoginDTO;
import com.playchoice.member.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO memberDao;

	// 회원 가입
	@Override
	public void insertMember(MemberDTO dto) throws Exception {
		memberDao.insertMember(dto);
	}
	
	// 로그인
	@Override
	public MemberDTO loginMember(LoginDTO dto) throws Exception {
		MemberDTO memberDto = null;
		memberDto = memberDao.loginMember(dto);
		if(memberDto == null) { // 로그인 실패시
			return null; // null 리턴
		}
		if(memberDto.getM_status() == 1 || memberDto.getM_status() == 2) { // 블랙회원 또는 탈퇴회원인 경우
			return null;
		}
		return memberDto;
	}
	
	// 아이디 찾기
	@Override
	public String findId(MemberDTO dto) {
		Object obj = (MemberDTO)memberDao.findId(dto);
		if(obj == null) {
			return "fail";
		} else {
			return ((MemberDTO)obj).getM_id();
		}
	}

	// 비밀번호 찾기
	@Override
	public String findPw(MemberDTO dto) {
		//임시 비밀번호 난수 6글자 조합
		Random random = new Random();
		String tmp = "";
		while(tmp.length() <= 6) {
			switch(random.nextInt(3)) {
			case 0: // 소문자
				tmp += String.valueOf((char)(int)(random.nextInt(26)+97));
				break;
			case 1: // 대문자
				tmp += String.valueOf((char)(int)(random.nextInt(26)+65));
				break;
			case 2: // 숫자
				tmp += String.valueOf(random.nextInt(10));
				break;
			}
		}
		dto.setM_pw(tmp);
		if(memberDao.findPw(dto) < 1) {
			return "fail";
		} else {
			return tmp;
		}
	}
	
	// 회원 정보 조회
	@Override
	public MemberDTO viewMember(String m_id) throws Exception {
		MemberDTO dto = memberDao.viewMember(m_id);
		return dto;
	}

	// 회원 정보 수정
	@Override
	public void updateMember(MemberDTO dto) throws Exception {
		memberDao.updateMember(dto);
	}

	// 회원 탈퇴
	@Override
	public void deleteMember(String m_id) throws Exception {
		memberDao.deleteMember(m_id);
	}

	// 아이디 중복체크
	@Override
	public boolean duplicateId(String m_id) throws Exception {
		MemberDTO dto = null;
		dto = memberDao.viewMember(m_id);
		if(dto != null) {
			return true;
		}
		return false;
	}
	
	// 이메일 중복체크
	@Override
	public boolean duplicateMail(String m_mail) throws Exception {
		MemberDTO dto = null;
		System.out.println("m_mail: "+ m_mail);
		dto = memberDao.viewMemberByEmail(m_mail);
		System.out.println(dto);
		if(dto != null) {
			return true;
		}
		return false;
	}

	// 회원 정보 수정 및 삭제를 위한 비밀번호 체크
	@Override
	public boolean checkPw(String m_id, String m_pw) throws Exception {
		return memberDao.checkPw(m_id, m_pw);
	}
	
	// 비밀번호 변경
	@Override
	public boolean updatePw(String m_id, String m_pw, String new_pw) throws Exception {
		if (checkPw(m_id, m_pw)) {
			int result = memberDao.updatePw(m_id, new_pw);
			if (result == 1) {
				return true;
			}
		}
		return false;
	}








}
