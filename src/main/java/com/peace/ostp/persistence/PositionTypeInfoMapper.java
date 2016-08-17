package com.peace.ostp.persistence;

import com.peace.ostp.domain.PositionTypeInfo;

public interface PositionTypeInfoMapper {
    int deleteByPrimaryKey(String positiontypeid);

    int insert(PositionTypeInfo record);

    int insertSelective(PositionTypeInfo record);

    PositionTypeInfo selectByPrimaryKey(String positiontypeid);

    int updateByPrimaryKeySelective(PositionTypeInfo record);

    int updateByPrimaryKey(PositionTypeInfo record);
}