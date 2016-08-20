package com.peace.ostp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.peace.ostp.domain.BasicInfo;
import com.peace.ostp.persistence.BasicInfoMapper;
import com.peace.ostp.service.IBasicInfo;

@Service
public class InfoServiceImpl implements IBasicInfo {
	
	@Autowired
	public BasicInfoMapper basicInfoMapper;

	@Override
	public void addInfo(BasicInfo basicInfo) {
		// TODO Auto-generated method stub
		try {
			basicInfoMapper.insert(basicInfo);
			
		} catch (Exception e) {
			if(e.getClass().getName().equals("org.springframework.dao.DuplicateKeyException"))
				throw new RuntimeException("duplicate-username");
			else 
				throw new RuntimeException(e.getMessage());
		}
	}

	@Override
	public void deleteInfo(int infoid) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<BasicInfo> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
