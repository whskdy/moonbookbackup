package com.rar.khbook.ebook.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.rar.khbook.ebook.model.vo.EbookDatabind;

@Repository
public class EbookDaoImpl implements EbookDao {

	@Override
	public int insertBookDataIntoDatabase(SqlSession session, Map param) {
		int result = 0;
		try{
			result = session.insert("bookEbookDatabind.insertBookDataIntoDatabase",param);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@Override
	public List<EbookDatabind> search(SqlSession session, Map param) {
		return session.selectList("bookEbookDatabind.search", param);
	}
	
}