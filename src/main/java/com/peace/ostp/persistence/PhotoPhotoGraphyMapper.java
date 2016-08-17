package com.peace.ostp.persistence;

import com.peace.ostp.domain.PhotoPhotoGraphy;

public interface PhotoPhotoGraphyMapper {
    int deleteByPrimaryKey(String pictureid);

    int insert(PhotoPhotoGraphy record);

    int insertSelective(PhotoPhotoGraphy record);

    PhotoPhotoGraphy selectByPrimaryKey(String pictureid);

    int updateByPrimaryKeySelective(PhotoPhotoGraphy record);

    int updateByPrimaryKey(PhotoPhotoGraphy record);
}