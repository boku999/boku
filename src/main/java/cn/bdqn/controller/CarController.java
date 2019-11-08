package cn.bdqn.controller;

import cn.bdqn.entity.*;
import cn.bdqn.service.book.BookService;
import cn.bdqn.service.orderitem.OrderItemService;
import cn.bdqn.service.orders.OrdersService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/car")
public class CarController {

    @Resource
    private OrdersService ordersService;
    @Resource
    private OrderItemService orderItemService;
    @Resource
    private BookService bookService;
    //购物车集合
    private List<UserBooks> list=new ArrayList<UserBooks>();;
    //购物结算集合
    private List<UserBooks> ulist=new ArrayList<UserBooks>();

    //进入购物车
    @RequestMapping("/userBooks.html")
    public String userBooks(@RequestParam(value = "usid",required = false)String uid,HttpServletRequest request){
        User user = (User)request.getSession().getAttribute("uid");
        System.out.println("============>"+user);
        if ("".equals(user)||user==null) {
            System.out.println("未登录");
            request.getSession().setAttribute("list", null);
            // 未登录
        } else {
            request.getSession().setAttribute("list", list);
            System.out.println("已登录");
        }
        request.getSession().setAttribute("uid", user);
        return "car";
    }

    /*@RequestMapping("/datail.html")
    public String detail(){
        return "detail";
    }*/

    //加入购物车
    @RequestMapping(value = "/addUserBooks.html",method = RequestMethod.POST)
    @ResponseBody
    public HashMap<String, String> addCar(HttpServletRequest request, Model model,
                            @RequestParam(value = "usid",required = false)String usid,
                          @RequestParam(value = "count",required = false)String count,
                          @RequestParam(value = "uid",required = false)String uid) throws UnsupportedEncodingException {
        User user = (User)request.getSession().getAttribute("uid");
        System.out.println("=========>user:"+user);
        HashMap<String, String> resultMap = new HashMap<String, String>();
                boolean flag=true;
            if (user==null) {
                //用户未登录
               flag=false;
               resultMap.put("resultMap","notlogin");
            } else {
                Book book=bookService.getBookByid(Integer.parseInt(usid));
                UserBooks userbooks=new UserBooks();
                userbooks.setBookid(book.getBookid());
                userbooks.setBookimg(book.getBookimg());
                userbooks.setBookname(book.getBookname());
                userbooks.setDiscount(book.getDiscount());
                userbooks.setPrice(book.getPrice());
                userbooks.setUid(Integer.parseInt(uid));
                userbooks.setCount(Integer.parseInt(count));

                if (list.size()==0) {
                    //集合为空，可以直接添加
                    list.add(userbooks);
                    flag=true;
                    resultMap.put("resultMap","true");
                }else{
                    for (UserBooks item : list) {
                        if (userbooks.getBookid()==item.getBookid()) {
                            //集合里有相同的数据，只需修改数量即可
                            item.setCount((item.getCount()+userbooks.getCount()));
                           /* flag=false;*/
                            flag=false;
                            resultMap.put("resultMap","true");
                        }
                    }
                    if (flag) {
                        list.add(userbooks);
                        resultMap.put("resultMap","true");
                    }
                }
                System.out.println("============>list"+list.toString());
                request.getSession().setAttribute("list",list);
            }
        return resultMap;
    }

    //购物车加减数量
    @RequestMapping("/getNum.html")
    @ResponseBody
    public String getNumAdd(HttpServletRequest request,@RequestParam(value = "bookid",required = false) String bookid,
                            @RequestParam(value = "count",required = false) String count){
       for (UserBooks item:list){
           if(item.getBookid()==Integer.parseInt(bookid)){
               item.setCount(Integer.parseInt(count));
               System.out.println("=====>count:"+item.getCount());
           }
       }
       //重新保存ulist集合
        request.getSession().setAttribute("list",list);
        return "true";
    }

    //删除ulist集合数据
    @RequestMapping("/dellist.html")
    @ResponseBody
    public String delulist(HttpServletRequest request,@RequestParam(value = "bookid",required = false)String bookid){
        for (UserBooks item:list){
            if(item.getBookid()==Integer.parseInt(bookid)){
                list.remove(item);
                System.out.println("list===>del:"+list.toString());
            }
        }
        request.getSession().setAttribute("list",list);
        return "true";
    }

    //结算物品
    @RequestMapping("/banlances.html")
    @ResponseBody
    public String banlances(HttpServletRequest request,@RequestParam("bookid")String bookid){
        boolean flag=true;
        if(ulist.size()==0){
            for (UserBooks item:list){
                if(item.getBookid()==Integer.parseInt(bookid)){
                    ulist.add(item);
                }else{
                    ulist.remove(item);
                }
            }
            flag=true;
        }
        if(flag) {
            for (UserBooks item : list) {
                if (item.getBookid() == Integer.parseInt(bookid)) {
                    ulist.add(item);
                } else {
                    ulist.remove(item);
                }
            }
        }
        System.out.println("ulist===>"+ulist.toString());
        request.getSession().setAttribute("ulist",ulist);
        return "true";
    }

}
