package com.kaiyu.dao;

import com.kaiyu.entity.Role;
import com.kaiyu.entity.User;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author 叶倖燚
 */
@Repository
public interface UserDao {

    int saveUser(String username, String password);

    User findByUsername(String username);

    List<Role> getUserRolesById(Integer userId);

    User findUserById(Integer userId);

    Integer updatePassword(@Param("userId") Integer userId, @Param("password") String password);

    int updateUser(User user);

    List<User> getUserByName(@Param("userId") Integer id, @Param("name") String name);

    int deleteUser(Integer userId);

    void registerUser(User user);

    @Select("SELECT COUNT(*) FROM user WHERE username = #{username}")
    int getUserCount(String username);
}