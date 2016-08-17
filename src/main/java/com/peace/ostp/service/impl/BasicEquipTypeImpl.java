package com.peace.ostp.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.peace.ostp.domain.BasicEquipType;
import com.peace.ostp.persistence.BasicEquipTypeMapper;
import com.peace.ostp.service.IBasicEquipType;
import com.peace.ostp.util.Page;

@Service
public class BasicEquipTypeImpl implements IBasicEquipType {

	@Autowired
	public BasicEquipTypeMapper basicEquipTypeMapper;
	
	@Override
	public int deleteEquipTypeByid(String equiptypeid) {
		return basicEquipTypeMapper.deleteEquipTypeByid(equiptypeid);
	}

	@Override
	public int insertEquipType(BasicEquipType basicEquipType) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public BasicEquipType getEquipTypeById(String equiptypeid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BasicEquipType> getAllEquipType(Page<BasicEquipType> page) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateEquipType(BasicEquipType basic_equip_type) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void deleteEquipTypeByIds(String equipTypeIds) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<BasicEquipType> getSearchList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

}
