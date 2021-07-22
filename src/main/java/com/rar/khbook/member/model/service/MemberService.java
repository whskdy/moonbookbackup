package com.rar.khbook.member.model.service;


import java.util.List;
import java.util.Map;

import com.rar.khbook.coupon.model.vo.Coupon;
import com.rar.khbook.member.model.vo.Member;
import com.rar.khbook.member.model.vo.Membergrade;

public interface MemberService {

	int insertMember(Member m);
	
	Member selectOneMember(Map param);
	
	Member searchId1(Member m); //이름 ,전화번호 -> 아이디 찾기
	
	Member searchId2(Member m); //이름 ,이메일 ->아이디 찾기
	
	Member searchId3(Member m); //아이디 ,이름 ,전화번호 -> 아이디 조회 
	
	Member searchId4(Member m); //아이디 ,이름 ,이메일 -> 아이디 조회 
	
	int updateMemberPw(Member m);
	
//	쿠폰 가져옴
	List<Coupon> getCoupon(Member m);
//	회원의 회원등급 가져옴
	Membergrade getMembergrade(Member m);
//	전체 회원등급 가져옴
	List<Membergrade> memberGrade();
}