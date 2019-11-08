package cn.bdqn.service.orderitem;

import cn.bdqn.entity.OrderItem;

import java.util.List;

public interface OrderItemService {
    List<OrderItem> getOrderItemByuid(int uid);

    List<OrderItem> getorderitembyorid();
}
