package cn.bdqn.service.addressitem;


import cn.bdqn.dao.addressitem.AddressItemMapper;
import cn.bdqn.entity.AddressItem;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("addressItemService")
public class AddressItemServiceImpl implements AddressItemService {

    @Resource
    private AddressItemMapper addressItemMapper;

    @Override
    public List<AddressItem> getaddressbyid(int uid) {
        // TODO Auto-generated method stub
        return addressItemMapper.getaddressbyid(uid);
    }

    @Override
    public int addAddressItem(AddressItem ads) {
        // TODO Auto-generated method stub
        return addressItemMapper.addAddressItem(ads);
    }
}
