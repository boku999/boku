package cn.bdqn.service.orderitem;

import cn.bdqn.dao.orderitem.OrderItemMapper;
import cn.bdqn.entity.OrderItem;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("orderItemService")
public class OrderItemServiceImpl implements OrderItemService {

    @Resource
    private OrderItemMapper orderItemMapper;

    @Override
    public List<OrderItem> getOrderItemByuid(int uid) {
        // TODO Auto-generated method stub
        return orderItemMapper.getOrderItemByuid(uid);
    }
    @Override
    public List<OrderItem> getorderitembyorid() {
        // TODO Auto-generated method stub
        return orderItemMapper.getorderitembyorid();
    }
}
