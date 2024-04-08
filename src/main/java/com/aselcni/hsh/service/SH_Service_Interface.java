package com.aselcni.hsh.service;

import java.util.List;

import com.aselcni.hsh.model.Procmst;
import com.aselcni.hsh.model.Whmst;

public interface SH_Service_Interface {

	Procmst GetprocmstDetails(String id);

	List<Procmst> getProcmst();

	boolean same_Emp_Id(String empId);

	void updateProc(Procmst procmst);

	void DelDateProc(Procmst procmst);

	void NewProc(Procmst procmst);

	List<Whmst> getWhmst();

	Whmst GetwhmstDetails(String id);

	void updateWhmst(Whmst whmst);

	void DelDatewhmst(Whmst whmst);

	void NewWhmst(Whmst whmst);


}
