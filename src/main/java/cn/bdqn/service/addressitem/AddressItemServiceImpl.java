package cn.bdqn.service.addressitem;


import cn.bdqn.dao.addressitem.AddressItemMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("addressItemService")
public class AddressItemServiceImpl implements AddressItemService {

    @Resource
    private AddressItemMapper addressItemMapper;

}
