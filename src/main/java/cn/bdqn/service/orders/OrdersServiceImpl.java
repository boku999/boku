package cn.bdqn.service.orders;

import cn.bdqn.entity.OrderItem;
import cn.bdqn.entity.Orders;
import cn.bdqn.service.orderitem.OrderItemService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("ordersService")
public class OrdersServiceImpl implements OrdersService{
    @Resource
    private OrdersService ordersService;

    private OrderItemService orderItemService;

    @Override
    public int addOrder(Orders ord) {
        // TODO Auto-generated method stub
        return ordersService.addOrder(ord);
    }
    @Override
    public int addOrderitem(OrderItem ordi, int odrid) {

        return ordersService.addOrderitem(ordi,odrid);
    }
    @Override
    public List<Orders> getOrderItemByuid(Orders ord, int uid) {

        List<OrderItem> orderItemByuid = orderItemService.getOrderItemByuid(uid);
        ord.setBlist(orderItemByuid);

        return ordersService.getOrderByuid(uid);
    }
    @Override
    public List<Orders> getOrderByuid(int uid) {
        // TODO Auto-generated method stub
        return ordersService.getOrderByuid(uid);
    }
}
