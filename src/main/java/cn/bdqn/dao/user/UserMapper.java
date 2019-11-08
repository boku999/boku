package cn.bdqn.dao.user;

import cn.bdqn.entity.User;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    User getUsersList(@Param("uname") String uname);

    int addUser(@Param("uname") String uname,
                @Param("upwd") String upwd);
}
