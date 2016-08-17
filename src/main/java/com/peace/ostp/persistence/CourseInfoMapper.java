package com.peace.ostp.persistence;

import com.peace.ostp.domain.CourseInfo;

public interface CourseInfoMapper {
    int deleteByPrimaryKey(String courseid);

    int insert(CourseInfo record);

    int insertSelective(CourseInfo record);

    CourseInfo selectByPrimaryKey(String courseid);

    int updateByPrimaryKeySelective(CourseInfo record);

    int updateByPrimaryKey(CourseInfo record);
}