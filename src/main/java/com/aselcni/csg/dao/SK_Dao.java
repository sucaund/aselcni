package com.aselcni.csg.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class SK_Dao implements SK_Dao_Interface {
	
	private SqlSession session;

}
