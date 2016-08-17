package com.peace.ostp.persistence;

import com.peace.ostp.domain.PositionDetailInfo;

public interface PositionDetailInfoMapper {
    int deleteByPrimaryKey(String positionid);

    int insert(PositionDetailInfo record);

    int insertSelective(PositionDetailInfo record);

    PositionDetailInfo selectByPrimaryKey(String positionid);

    int updateByPrimaryKeySelective(PositionDetailInfo record);

    int updateByPrimaryKey(PositionDetailInfo record);
}