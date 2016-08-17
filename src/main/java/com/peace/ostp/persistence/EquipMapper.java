package com.peace.ostp.persistence;

import com.peace.ostp.domain.Equip;

public interface EquipMapper {
    int deleteByPrimaryKey(String equipid);

    int insert(Equip record);

    int insertSelective(Equip record);

    Equip selectByPrimaryKey(String equipid);

    int updateByPrimaryKeySelective(Equip record);

    int updateByPrimaryKey(Equip record);
}