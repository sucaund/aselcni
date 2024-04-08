package com.aselcni.hsh.dao;

import java.util.List;

import com.aselcni.hsh.model.Procmst;
import com.aselcni.hsh.model.Whmst;

public interface SH_Dao_Interface {

	List<Procmst> getProcmst();


	Procmst GetprocmstDetails(String id);


	boolean same_Emp_Id(String empId);


	void updateProc(Procmst procmst);


	void DelDateProc(Procmst procmst);


	void NewProc(Procmst procmst);


	List<Whmst> getWhmst();


	Whmst GetwhmstDetails(String id);


	void updatewhmst(Whmst whmst);


	void DelDatewhmst(Whmst whmst);


	void NewWhmst(Whmst whmst);



}
