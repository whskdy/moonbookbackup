package com.rar.khbook.usedboard.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rar.khbook.usedboard.model.dao.UsedboardDao;
import com.rar.khbook.usedboard.model.vo.Usedboard;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class UsedboardServiceImpl implements UsedboardService {
	
	@Autowired
	private UsedboardDao dao;
	@Autowired
	private SqlSession session;
	
	@Override
	public List<Usedboard> selectUsedboardList(int cPage, int numPerpage) {
		// TODO Auto-generated method stub
		return dao.selectUsedboardList(session,cPage,numPerpage);
	}
	
	@Override
	public int selectUsedboardCount() {
		// TODO Auto-generated method stub
		return dao.selectUsedboardCount(session);
	}
	
	@Override
	public List<Usedboard> searchUsedboardList(int cPage, int numPerpage,String catagory) {
		// TODO Auto-generated method stub
		return dao.searchUsedboardList(session,cPage,numPerpage,catagory);
	}
	
	@Override
	public int searchUsedboardCount(String catagory) {
		// TODO Auto-generated method stub
		return dao.searchUsedboardCount(session,catagory);
	}
}