package cn.bdqn.service.orderitem;

import cn.bdqn.dao.orderitem.OrderItemMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("orderItemService")
public class OrderItemServiceImpl implements OrderItemService {

    @Resource
    private OrderItemMapper orderItemMapper;
}
