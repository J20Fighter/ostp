package com.peace.ostp.service;

import java.util.List;

import com.peace.ostp.domain.BasicInfo;

public interface IBasicInfo {

	void addInfo(BasicInfo basicInfo);
	
	void deleteInfo(int infoid);
	
	List<BasicInfo> getAll();
}
