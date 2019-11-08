package cn.bdqn.service.orders;

import cn.bdqn.entity.OrderItem;
import cn.bdqn.entity.Orders;

import java.util.List;

public interface OrdersService {
    int addOrder(Orders ord);

    int addOrderitem(OrderItem ordi, int odrid);

    List<Orders> getOrderByuid(int uid);

    List<Orders> getOrderItemByuid(Orders ord, int uid);
}
