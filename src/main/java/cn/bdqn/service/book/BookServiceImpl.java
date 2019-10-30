package cn.bdqn.service.book;

import cn.bdqn.dao.book.BookMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("bookService")
public class BookServiceImpl implements BookService {
    @Resource
    private BookMapper bookMapper;
}
