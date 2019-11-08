package cn.bdqn.service.book;

import cn.bdqn.entity.Book;
import cn.bdqn.tools.PageUtil;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookService {
    // 按图书名字模糊查询图书信息
    List<Book> getBookByName(String name);
    //分页
    void getBookPage(PageUtil<Book> pu, int categoryid);
    //按图书类别查询
    List<Book> getBookById(int categoryid,int bookid);
    //随机查询图书
    List<Book> getBookBycategoryid(int categoryid);

    Book getBookByid(int bookid);
}
