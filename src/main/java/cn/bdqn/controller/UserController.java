package cn.bdqn.controller;

import cn.bdqn.entity.*;
import cn.bdqn.service.book.BookService;
import cn.bdqn.service.category.CateGoryService;
import cn.bdqn.service.orderitem.OrderItemService;
import cn.bdqn.service.orders.OrdersService;
import cn.bdqn.service.user.UserService;
import cn.bdqn.tools.Constants;
import cn.bdqn.tools.PageSupport;
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
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Random;

import static cn.bdqn.tools.Constants.pageSize;

@Controller
@RequestMapping("/user")
public class UserController {

    @Resource
    private UserService userService;
    @Resource
    private BookService bookService;


    String path = null;

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

    /**
     * 后台代码
     */

    /**
     * 启动项目
     *
     * @return
     */
    @RequestMapping("/houlogin")
    public String houlogin() {
        return "houlogin";
    }

    /**
     * 登录验证
     *
     * @param user
     * @param session
     * @return
     */
    @RequestMapping(value = "/dologin", method = RequestMethod.POST)
    public String doLogin(User user, HttpSession session) {
        User user1 = userService.isLogin(user.getUname(), DigestUtils.md5Hex(user.getUpwd()));
        System.out.println("user1===============>"+user1.toString());
        if (user1 != null) {
            session.setAttribute(Constants.USER_SESSION, user);
            return "redirect:/user/frame.html";
        }
        return "error";
    }

    //后台退出登录
    @RequestMapping("/houloginout.html")
    public String houloginout(HttpSession session){
        session.removeAttribute(Constants.USER_SESSION);
        return "houlogin";
    }

    /**
     * 跳转主页
     *
     * @param session
     * @return
     */
    @RequestMapping("/frame.html")
    public String frame(HttpSession session) {
        User user = (User) session.getAttribute(Constants.USER_SESSION);
        if (user == null) {
            return "houlogin";
        } else {
            return "frame";
        }
    }

    @RequestMapping("/userList.html")
    public String userList(HttpSession session, Model model,
                           @RequestParam(value = "bookname", required = false) String bookname,
                           @RequestParam(value = "categoryid", required = false) String categoryid,
                           @RequestParam(value = "currentPageNo", required = false, defaultValue = "1") String currentPageNo) {
//        List<Book> user = bookService.getBookList();
        int currentPageNoInt = Integer.parseInt(currentPageNo);

        PageSupport pageSupport = new PageSupport();
        pageSupport.setPageSize(pageSize);
        int totalCount = bookService.getBookCount();
        pageSupport.setTotalCount(totalCount);
        int totalPageCount = totalCount / pageSize;
        if (totalCount % pageSize != 0) {
            totalPageCount++;
        }
        pageSupport.setTotalPageCount(totalPageCount);
        pageSupport.setCurrentPageNo(currentPageNoInt);
        int categoryidInt = 0;
        if (categoryid != null) {
            categoryidInt = Integer.parseInt(categoryid);
        }
       /* System.out.println("\n\n" + totalCount + "\n\n");
        System.out.println("\n\n" + categoryidInt + "\n\n");
        System.out.println("\n\n" + bookname + "\n\n");
        System.out.println("\n\n" + currentPageNoInt + "\n\n");*/
        if (bookname == null) {
            bookname = "";
        } else {
            try {
                bookname = new String(bookname.getBytes("iso-8859-1"), "utf-8");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        List<Book> user = bookService.getUserHouList(bookname, categoryidInt, currentPageNoInt, pageSize);
        /*System.out.println("userlist===>"+user.toString());*/
        System.out.println("bookname====>"+bookname);
        session.setAttribute("user", user);
        model.addAttribute("pageSupport", pageSupport);
        return "userlist";
    }

    @RequestMapping("/adduser.html")
    public String addUser() {
        return "useradd";
    }

    @RequestMapping(value="addusers.html",method = RequestMethod.POST)
    public String addusers(Book book,String bookname) {
        System.out.println("sssss");
        System.out.println("==========>"+bookname);
        System.out.println("==========>" + book.getBookname());
        System.out.println("==========>" + book.getCategoryid());

        if (bookService.addBook(book) == 1) {
            return "redirect:/user/userList.html";
        }
        return "error";
    }

    @RequestMapping(value = "/delBook", method = RequestMethod.GET)
    @ResponseBody
    public Object delBook(String uid, HttpSession session) {
        System.out.println("=======================>123333");
        System.out.println("\n=====================>"+uid+"\n");
        /* *//*删除失败!*//*
        if (bookService.delBook(Integer.parseInt(uid)) == 1) {
            *//*删除成功!*//*
        }*/
        int bookId=Integer.parseInt(uid);
        HashMap<String, String> resultMap = new HashMap<String, String>();
        if(bookId <= 0){
            resultMap.put("delResult", "notexist");
        }else{
            if(bookService.delBook(bookId)==1){
                resultMap.put("delResult", "true");
            }else{
                resultMap.put("delResult", "false");
            }
        }

        return resultMap;
    }

    @RequestMapping("/modify")
    public String modify(int bookid,HttpSession session){
        Book book = bookService.getBook(bookid);
        session.setAttribute("book",book);
        return "usermodify";
    }

    @RequestMapping(value="modify.html",method = RequestMethod.POST)
    public String bookmodify(Book book){
        System.out.println("================>修改书籍");
        int count = bookService.updBook(book);
        if(count==1){
            System.out.println("================>修改成功!");
            return "redirect:/user/userList.html";
        }
        return "error";
    }

    @RequestMapping("/view")
    public String view(int bookid,HttpSession session){
        Book book = bookService.getBook(bookid);
        session.setAttribute("book",book);
        return "userview";
    }

    @RequestMapping("/upwd")
    public String updPwd(){
        return "pwdmodify";
    }


    @RequestMapping(value = "/updpwdLogin.html",method = RequestMethod.POST)
    public String updpwdLogin(User user,String rupwd,HttpSession session){
        User users = (User) session.getAttribute(Constants.USER_SESSION);
        user.setUname(users.getUname());
        System.out.println("======================>"+user.getUname());
        System.out.println("======================>"+user.getUpwd());
        System.out.println("======================>"+rupwd);

        //验证两次密码输入是否相同
        if(rupwd.equals(user.getUpwd())){
            user.setUpwd(DigestUtils.md5Hex(user.getUpwd()));
            if(userService.updUser(user)==1){
                return "houlogin";
            }
        }
        return "error";
    }
}
