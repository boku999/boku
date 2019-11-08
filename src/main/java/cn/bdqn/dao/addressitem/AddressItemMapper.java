package cn.bdqn.dao.addressitem;

import cn.bdqn.entity.AddressItem;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AddressItemMapper {
    List<AddressItem> getaddressbyid(@Param("uid") int uid);

    int addAddressItem(AddressItem ads);
}
