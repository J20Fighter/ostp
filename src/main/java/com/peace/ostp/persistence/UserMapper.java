package com.peace.ostp.persistence;

import java.util.List;

import com.peace.ostp.domain.Role;
import com.peace.ostp.domain.User;
import com.peace.ostp.util.Page;

public interface UserMapper {
    int deleteByPrimaryKey(String userid);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(String userid);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

	void updateUser(User user, String oldPassword);

	void editUser(User user);

	List<User> getSearchUserList(Page<User> page, String username);

	List<User> getAllUserList(Page<User> page);

	User getUserById(int user_id);

	User getUserByName(String username);

	List<Role> getRoleListByUserId(String userid, Object object);
}