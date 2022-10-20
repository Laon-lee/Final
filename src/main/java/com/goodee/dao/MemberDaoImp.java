package com.goodee.dao;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;

import com.goodee.vo.*;

public class MemberDaoImp implements MemberDAO {
	private SqlSessionTemplate sqlSession;

	public MemberDaoImp() {

	}

	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public void memberJoinMethod(com.goodee.vo.MemberVO vo) {
		sqlSession.insert("com.goodee.vo.join", vo);

	}
}
