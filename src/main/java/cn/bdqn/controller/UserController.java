package cn.bdqn.controller;

import cn.bdqn.entity.*;
import cn.bdqn.service.book.BookService;
import cn.bdqn.service.category.CateGoryService;
import cn.bdqn.service.orderitem.OrderItemService;
import cn.bdqn.service.orders.OrdersService;
import cn.bdqn.service.user.UserService;
import com.alibaba.fastjson.JSONArray;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Random;

@Controller
@RequestMapping("/user")
public class UserController {

    @Resource
    private UserService userService;

    String path = null;

   /* @RequestMapping("/login.html")
    public String login(HttpServletRequest request){
        request.getSession().setAttribute("isok",false);
        return "login";
    }*/

    //登录
    @RequestMapping("/login.html")
    public String login(){return "login";}

    @ResponseBody
    @RequestMapping(value = "/islogin.html",method = RequestMethod.POST)
    public String islogin(User user,HttpServletRequest request) {

        User count = userService.isLogin(user.getUname(), DigestUtils.md5Hex(user.getUpwd()));
        if (null != count) {//登录成功
            request.getSession().setAttribute("uid", count);
            request.getSession().setAttribute("isok", true);
            return "true";
        }
        request.getSession().setAttribute("isok", false);
        return "false";

    }

    //进入注册
    @RequestMapping("/registered.html")
    public String registered(){return "registered";}

    //验证注册
    @RequestMapping(value = "/addUser.html",method = RequestMethod.POST)
    public String insert(@RequestParam(value = "user_name",required = false) String uname, @RequestParam(value = "pwd",required = false) String upwd, HttpServletRequest request) {
        System.out.println("insert()================");

        boolean flag= userService.insert(uname, org.apache.commons.codec.digest.DigestUtils.md5Hex(upwd));

        if (flag) {
            //注册成功
            path = "login";
        } else {
            path = "registered";
        }
        return path;
    }

    /*@RequestMapping(value = "/addUser.html",method = RequestMethod.POST)
    public HashMap<String, String> insert(@RequestParam(value = "user_name",required = false) String uname, @RequestParam(value = "upd",required = false) String upwd, HttpServletRequest request, Model model) {
        System.out.println("insert()================");
        HashMap<String, String> resultMap=new HashMap<String, String>();

        boolean isName = userService.isName(uname);
        if(isName){
            //存在
            resultMap.put("result","exist");
        }else{
            resultMap.put("result","notexist");
            //名称不存在
            //开始注册
           int count=userService.insert(uname,org.apache.commons.codec.digest.DigestUtils.md5Hex(upwd));
           if(count==1){
               resultMap.put("result","finish");
           }else{
               //注册失败
               resultMap.put("result","fail");
           }
        }
        return resultMap;
    }*/

    @RequestMapping("/isName.html")
    @ResponseBody
    public boolean isname(String uname){
        return userService.isName(uname);
    }



    //退出登录
    @RequestMapping("/loginout.html")
    public String loginout(HttpServletRequest request,@RequestParam(value = "url",required = false)String url){
        request.getSession().removeAttribute("uid");
        request.getSession().setAttribute("isok", false);
        if(url==""||url==null){
            url="Mnag";
        }
        return url;
    }


}
