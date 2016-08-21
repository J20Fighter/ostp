package com.peace.ostp.persistence;

import java.util.List;

import com.peace.ostp.domain.BasicInfo;

public interface BasicInfoMapper {
    int deleteByPrimaryKey(String infoId);

    int insert(BasicInfo record);

    int insertSelective(BasicInfo record);

    BasicInfo selectByPrimaryKey(String infoId);
    
    List<BasicInfo> selectAll();

    int updateByPrimaryKeySelective(BasicInfo record);

    int updateByPrimaryKey(BasicInfo record);
}