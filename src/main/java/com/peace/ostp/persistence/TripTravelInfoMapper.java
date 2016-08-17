package com.peace.ostp.persistence;

import com.peace.ostp.domain.TripTravelInfo;

public interface TripTravelInfoMapper {
    int deleteByPrimaryKey(String travelid);

    int insert(TripTravelInfo record);

    int insertSelective(TripTravelInfo record);

    TripTravelInfo selectByPrimaryKey(String travelid);

    int updateByPrimaryKeySelective(TripTravelInfo record);

    int updateByPrimaryKey(TripTravelInfo record);
}