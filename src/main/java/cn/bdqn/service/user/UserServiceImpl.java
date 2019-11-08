package cn.bdqn.service.user;

import cn.bdqn.dao.user.UserMapper;
import cn.bdqn.entity.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {
    @Resource
    private UserMapper userMapper;
    @Override
    public boolean insert(String uname,String upwd) {
        int count=userMapper.addUser(uname,upwd);
        if(count==1){
            return true;
        }
        return false;
    }

    @Override
    public boolean isName(String uname) {
        User users=userMapper.getUsersList(uname);
        if(users!=null){
            return true;
            //名字存在
        }
        return false;
    }

    @Override
    public User isLogin(String uname, String upwd) {

        User user2 = userMapper.getUsersList(uname);
        if (user2 != null) {
            if (upwd.equals(user2.getUpwd())) {
                return user2;
            }
        }
        return null;
    }



    public static void main(String[] args) {
        System.out.println(2111);
        User login = new UserServiceImpl().isLogin("admin", "123");
        System.out.println(login.getUname());
    }
}
