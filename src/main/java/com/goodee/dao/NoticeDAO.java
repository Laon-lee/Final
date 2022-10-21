package com.goodee.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.goodee.vo.NoticeVO;

@Mapper
public interface NoticeDAO {
	public List<NoticeVO> getList();
	public NoticeVO getContents(String id);
}
