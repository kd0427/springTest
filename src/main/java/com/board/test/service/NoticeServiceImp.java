package com.board.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.board.test.dao.NoticeDao;
import com.board.test.vo.NoticeVO;

@Service
public class NoticeServiceImp implements NoticeService{
	
	@Autowired
	private NoticeDao noticeDao;
	
	@Override
	public List<NoticeVO> getlist() {
		
		List<NoticeVO> list = noticeDao.getlist();
		
		return list;
	}

}
