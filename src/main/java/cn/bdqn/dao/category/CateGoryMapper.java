package cn.bdqn.dao.category;

import cn.bdqn.entity.CateGory;

import java.util.List;

public interface CateGoryMapper {
    //查询所有图书分类
    List<CateGory> getCateGoryList();
}
