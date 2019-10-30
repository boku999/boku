package cn.bdqn.controller.user;

import cn.bdqn.service.user.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("/user")
public class UserController {

    @Resource
    private UserService userService;


    @RequestMapping("/login.html")
    public String login(){return "login";}

}
