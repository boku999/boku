package cn.bdqn.service.category;

import cn.bdqn.dao.category.CateGoryMapper;
import cn.bdqn.entity.CateGory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("cateGoryService")
public class CateGoryServiceImpl implements CateGoryService {

    @Resource
    private CateGoryMapper cateGoryMapper;

    @Override
    public List<CateGory> getCateGoryList() {
        return cateGoryMapper.getCateGoryList();
    }
}
