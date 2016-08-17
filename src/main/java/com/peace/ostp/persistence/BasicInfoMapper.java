package com.peace.ostp.persistence;

import com.peace.ostp.domain.BasicInfo;

public interface BasicInfoMapper {
    int deleteByPrimaryKey(String infoId);

    int insert(BasicInfo record);

    int insertSelective(BasicInfo record);

    BasicInfo selectByPrimaryKey(String infoId);

    int updateByPrimaryKeySelective(BasicInfo record);

    int updateByPrimaryKey(BasicInfo record);
}