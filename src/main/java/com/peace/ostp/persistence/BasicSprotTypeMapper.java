package com.peace.ostp.persistence;

import com.peace.ostp.domain.BasicSprotType;

public interface BasicSprotTypeMapper {
    int deleteByPrimaryKey(String sporttypeid);

    int insert(BasicSprotType record);

    int insertSelective(BasicSprotType record);

    BasicSprotType selectByPrimaryKey(String sporttypeid);

    int updateByPrimaryKeySelective(BasicSprotType record);

    int updateByPrimaryKey(BasicSprotType record);
}