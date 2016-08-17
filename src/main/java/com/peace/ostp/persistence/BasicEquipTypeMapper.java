package com.peace.ostp.persistence;

import com.peace.ostp.domain.BasicEquipType;

public interface BasicEquipTypeMapper {
    int deleteByPrimaryKey(String equiptypeid);

    int insert(BasicEquipType record);

    int insertSelective(BasicEquipType record);

    BasicEquipType selectByPrimaryKey(String equiptypeid);

    int updateByPrimaryKeySelective(BasicEquipType record);

    int updateByPrimaryKey(BasicEquipType record);

	int deleteEquipTypeByid(String equiptypeid);
}