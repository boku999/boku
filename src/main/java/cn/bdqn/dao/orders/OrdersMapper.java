package cn.bdqn.dao.orders;

import cn.bdqn.entity.OrderItem;
import cn.bdqn.entity.Orders;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrdersMapper {
    int addOrder(Orders ord);

    int addOrderitem(OrderItem ordi , @Param("odrid") int odrid);

    List<Orders> getOrderByuid(@Param("uid")int uid);
}
