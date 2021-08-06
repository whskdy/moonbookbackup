package com.rar.khbook.gift.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.rar.khbook.gift.model.vo.Ngift;
import com.rar.khbook.member.model.vo.Member;


public interface GiftDao {

	
	Member searchMember(String memberId, SqlSession session);
	
	
	List<Ngift> giftAll(SqlSession session);
	
	
	int insertGift(SqlSession session, Map param);
}
