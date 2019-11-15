package cn.bdqn.dao.book;

import cn.bdqn.entity.Book;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookMapper {
    //按图书名字模糊查询图书信息
    List<Book> getBookByName(@Param("name")String name);
    //根据类别分页查询
    List<Book> getBookByPage(@Param("pageNo")int pageNo,@Param("pageSize")int pageSize,@Param("categoryid")int categoryid);
    //按图书类别查询
    List<Book> getBookById(@Param("categoryid")int categoryid,@Param("bookid")int bookid);
    //随机根据分类显示图书(图书推荐)
    List<Book> getBookBycategoryid(@Param("categoryid")int categoryid);
    //根据id查询图书信息
    Book getBookByid(@Param("bookid")int bookid);
    //获取总条数
    int getPageCount(@Param("categoryid")int categoryid);

    /**后台
     * 查询总数量
     * @return
     */
    int getBookCount();

    /**
     * 分页显示所有书籍
     *
     * @return
     */
    List<Book> getUserHouList(@Param("bookname") String bookname,
                           @Param("categoryid") int categoryid,
                           @Param("currentPageNo") int currentPageNo,
                           @Param("pageSize") int pageSize);

    /**
     * 添加书籍
     * @return
     */
    int addBook(Book book);
    /**
     * 删除图书(根据编号删除)
     * @param bookid
     * @return
     */
    int delBook(@Param("bookid") int bookid);

    /**
     * 查询书籍(更具编号查询)
     * @param bookid
     * @return
     */
    Book getBook(@Param("bookid") int bookid);

    /**
     * 修改书籍
     * @param book
     * @return
     */
    int updBook(Book book);
}
