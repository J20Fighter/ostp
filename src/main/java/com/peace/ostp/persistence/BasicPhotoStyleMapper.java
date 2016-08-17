package com.peace.ostp.persistence;

import com.peace.ostp.domain.BasicPhotoStyle;

public interface BasicPhotoStyleMapper {
    int deleteByPrimaryKey(String photostyleid);

    int insert(BasicPhotoStyle record);

    int insertSelective(BasicPhotoStyle record);

    BasicPhotoStyle selectByPrimaryKey(String photostyleid);

    int updateByPrimaryKeySelective(BasicPhotoStyle record);

    int updateByPrimaryKey(BasicPhotoStyle record);
}