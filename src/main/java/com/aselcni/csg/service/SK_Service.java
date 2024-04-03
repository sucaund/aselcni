package com.aselcni.csg.service;

import org.springframework.stereotype.Service;

import com.aselcni.csg.dao.SK_Dao_Interface;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class SK_Service implements SK_Service_Interface {
	
	private SK_Dao_Interface sk_Dao_Interface;

}
