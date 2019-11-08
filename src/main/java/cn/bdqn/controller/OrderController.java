package cn.bdqn.controller;

import cn.bdqn.entity.AddressItem;
import cn.bdqn.entity.OrderItem;
import cn.bdqn.entity.Orders;
import cn.bdqn.service.orderitem.OrderItemService;
import cn.bdqn.service.orders.OrdersService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/order")
public class OrderController {

    @Resource
    private OrdersService ordersService;
    @Resource
    private OrderItemService orderItemService;


    @RequestMapping("/order.html")
    public String order(){
        return "order";
    }

    //进入我的订单界面，获取数据
    @RequestMapping("/orderItem.html")
    public String orderItem(@RequestParam(value = "usid",required = false)String uid,
                            HttpServletRequest request){
        if (uid == null || "".equals(uid)) {
            System.out.println("未登录");
            return "login";
        } else {
            System.out.println("已登录");
            List<Orders> orderByuid = ordersService.getOrderByuid(Integer.parseInt(uid));
            List<OrderItem> odritem = orderItemService.getorderitembyorid();
            String money=null;
            for (Orders o : orderByuid) {
                money=money+o.getTotoalMoney();
            }
            request.getSession().setAttribute("ors", orderByuid);
            request.getSession().setAttribute("oritem", odritem);
            return "OrderShow";
        }
    }




}
