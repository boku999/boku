package cn.bdqn.service.user;

import cn.bdqn.entity.User;

public interface UserService {
    //登录
    User isLogin(String uname, String upwd);
    //注册
    boolean insert(String uname,String upwd);

    //验证名字是否重复
    boolean isName(String uname);
}
