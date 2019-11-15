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

    /**
     * 查询总数量
     * @return
     */
    int getBookCount();
    /**
     * 查询所有书籍
     *
     * @return
     */
    List<Book> getUserHouList(String bookname, int categoryid,
                           int currentPageNo, int pageSize);

    /**
     * 添加书籍
     *
     * @return
     */
    int addBook(Book book);

    /**
     * 删除图书(根据编号删除)
     *
     * @param bookid
     * @return
     */
    int delBook(int bookid);

    /**
     * 查询书籍(更具编号查询)
     *
     * @param bookid
     * @return
     */
    Book getBook(int bookid);

    /**
     * 修改书籍
     *
     * @param book
     * @return
     */
    int updBook(Book book);
}
