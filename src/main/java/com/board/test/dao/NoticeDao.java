package com.board.test.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.board.test.vo.NoticeVO;

@Mapper
public interface NoticeDao {
	
	@Select("select * from notice")
	List<NoticeVO> getlist();
}
