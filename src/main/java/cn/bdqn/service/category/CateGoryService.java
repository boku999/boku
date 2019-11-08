package cn.bdqn.service.category;

import cn.bdqn.entity.CateGory;

import java.util.List;

public interface CateGoryService {
    //查询所有图书分类
    List<CateGory> getCateGoryList();
}
