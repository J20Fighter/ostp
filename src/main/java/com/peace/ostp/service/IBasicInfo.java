package com.peace.ostp.service;

import java.util.List;

import com.peace.ostp.domain.BasicInfo;
import com.peace.ostp.domain.User;
import com.peace.ostp.util.Page;

public interface IBasicInfo {

	void addInfo(BasicInfo basicInfo);
	
	void deleteInfo(int infoid);
	
	BasicInfo selectBasicInfo(String basicinfoId);
	
	List<BasicInfo> getAll(Page<BasicInfo> page);
}
