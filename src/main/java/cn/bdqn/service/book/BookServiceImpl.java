package cn.bdqn.service.book;

import cn.bdqn.dao.book.BookMapper;
import cn.bdqn.entity.Book;
import cn.bdqn.tools.PageUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("bookService")
public class BookServiceImpl implements BookService {
    @Resource
    private BookMapper bookMapper;

    public List<Book> getBookByName(String name) {
        // TODO Auto-generated method stub
        return bookMapper.getBookByName(name);
    }
    @Override
    public void getBookPage(PageUtil<Book> pu, int categoryid) {
        List<Book> list = bookMapper.getBookByPage((pu.getPageNo()-1)*pu.getPageSize(), pu.getPageSize(), categoryid);
        //设置总条数
        pu.setTotalSize(bookMapper.getPageCount(categoryid));
        //设置集合
        pu.setList(list);
    }
    @Override
    public List<Book> getBookById(int categoryid,int bookid) {
        // TODO Auto-generated method stub
        return bookMapper.getBookById(categoryid,bookid);
    }
    @Override
    public List<Book> getBookBycategoryid(int categoryid) {
        // TODO Auto-generated method stub
        return bookMapper.getBookBycategoryid(categoryid);
    }
    @Override
    public Book getBookByid(int bookid) {
        // TODO Auto-generated method stub
        return bookMapper.getBookByid(bookid);
    }

    @Override
    public int getBookCount() {
        return bookMapper.getBookCount();
    }

    @Override
    public List<Book> getUserHouList(String bookname, int categoryid, int currentPageNo, int pageSize) {
        return bookMapper.getUserHouList(bookname,categoryid,(currentPageNo-1)*pageSize,pageSize);
    }
    @Override
    public int addBook(Book book) {
        return bookMapper.addBook(book);
    }

    @Override
    public int delBook(int bookid) {
        return bookMapper.delBook(bookid);
    }

    @Override
    public Book getBook(int bookid) {
        return bookMapper.getBook(bookid);
    }

    @Override
    public int updBook(Book book) {
        return bookMapper.updBook(book);
    }

}
