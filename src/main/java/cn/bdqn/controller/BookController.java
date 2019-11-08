package cn.bdqn.controller;

import cn.bdqn.entity.Book;
import cn.bdqn.entity.CateGory;
import cn.bdqn.entity.User;
import cn.bdqn.service.book.BookService;
import cn.bdqn.service.category.CateGoryService;
import cn.bdqn.tools.PageUtil;
import com.alibaba.fastjson.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Random;

@Controller
@RequestMapping("/book")
public class BookController {

    @Resource
    private BookService bookService;
    @Resource
    private CateGoryService cateGoryService;

    int goryid=0;

    //分页
    @RequestMapping(value = "/page.html")
    public String page(HttpServletRequest request){
        int page=1;

        if(!"pge".equals(request.getParameter("opr"))) {
            goryid = Integer.parseInt(request.getParameter("cid"));
            System.out.println("分类id" + goryid);
        }
        if (request.getParameter("pageNo")!=null) {
            page=Integer.parseInt(request.getParameter("pageNo"));
            System.out.println("页码"+page);
        }
        System.out.println("第二次分类id"+goryid);
        PageUtil<Book> pu=new PageUtil<Book>();
        pu.setPageNo(page);
        bookService.getBookPage(pu, goryid);

        request.getSession().setAttribute("pu", pu);
       return "pageShow";
    }

    //主页随机显示推荐 进入主页
    @RequestMapping("/Mnag.html")
    public String loginafter(HttpServletRequest request){
        User user=(User) request.getSession().getAttribute("uid");
        if(user==null){
            request.getSession().setAttribute("isok", false);
        }
        Random random = new Random();
        int nextInt = random.nextInt(5) + 1;

        List<Book> bookslist = bookService.getBookBycategoryid(nextInt);
        request.getSession().setAttribute("books", bookslist);

        List<CateGory> cateGoryList = cateGoryService.getCateGoryList();
        request.getSession().setAttribute("corlist", cateGoryList);
        return "Mnag";
    }

    //主页ajax
    @RequestMapping("/ajaxServlet.html")
    @ResponseBody
    public  List<Book> ajaxServlet(){
        Random random = new Random();
        int nextInt = random.nextInt(5) + 1;
        List<Book> booklist = bookService.getBookBycategoryid(nextInt);
        System.out.println("booklist=============>"+booklist.toString());
        return booklist;
    }


    //图书详情
    @RequestMapping("/book.html")
    public String bookServlet(@RequestParam(value = "bookid",required = false)String bid, HttpServletRequest request){
        Book bookbyid = bookService.getBookByid(Integer.parseInt(bid));
        System.out.println("详情信息：===========》"+bookbyid.toString());
        System.out.println("图书编号：=======》"+bid);
        /*System.out.println("用户编号：=======》"+usid);*/
        request.getSession().setAttribute("bookxq", bookbyid);
        return "detail";
    }


}
