package cn.bdqn.dao.orderitem;

import cn.bdqn.entity.OrderItem;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrderItemMapper {
    List<OrderItem> getOrderItemByuid(@Param("uid") int uid);

    List<OrderItem> getorderitembyorid();
}
