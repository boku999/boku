package cn.bdqn.service.addressitem;

import cn.bdqn.entity.AddressItem;

import java.util.List;

public interface AddressItemService {
    List<AddressItem> getaddressbyid(int uid);

    int addAddressItem(AddressItem ads);
}
