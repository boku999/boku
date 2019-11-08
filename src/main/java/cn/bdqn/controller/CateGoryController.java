package cn.bdqn.controller;

import cn.bdqn.entity.CateGory;
import cn.bdqn.service.category.CateGoryService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/category")
public class CateGoryController {
    @Resource
    private CateGoryService cateGoryService;


    /**
     * 获取图书分类信息
     * @param request
     * @return 返回分类界面
     */
    @RequestMapping("/classification.html")
    public String getCateGoryList(HttpServletRequest request){
        List<CateGory> cateGoryList=cateGoryService.getCateGoryList();
        request.getSession().setAttribute("cateGoryList",cateGoryList);
        return "Classification";
    }
}
