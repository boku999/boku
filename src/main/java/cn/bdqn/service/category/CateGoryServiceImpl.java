package cn.bdqn.service.category;

import cn.bdqn.dao.category.CateGoryMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("cateGoryService")
public class CateGoryServiceImpl implements CateGoryService {

    @Resource
    private CateGoryMapper cateGoryMapper;
}
