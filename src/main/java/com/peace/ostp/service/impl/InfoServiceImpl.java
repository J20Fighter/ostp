package com.peace.ostp.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.peace.ostp.domain.BasicInfo;
import com.peace.ostp.persistence.BasicInfoMapper;
import com.peace.ostp.service.IBasicInfo;

public class InfoServiceImpl implements IBasicInfo {
	
	@Autowired
	public BasicInfoMapper basicInfoMapper;

	@Override
	public void addInfo(BasicInfo basicInfo) {
		// TODO Auto-generated method stub
		try {
			//String userId = -1;
			basicInfoMapper.insert(basicInfo);
			
			
		} catch (Exception e) {
			if(e.getClass().getName().equals("org.springframework.dao.DuplicateKeyException"))
				throw new RuntimeException("duplicate-username");
			else 
				throw new RuntimeException(e.getMessage());
		}
	}

}
