package cn.bdqn.entity;

/**
 *
 * 图书类
 */
public class Book {
    private int bookid;//图书id
    private String bookname;//图书名称
    private int categoryid;//图书类别
    private String author;//图书作者
    private String sell;//出版社
    private int price;//折扣价
    private int quantity;//库存
    private String bookimg;//图片
    private String info;//内容简介
    private String publicationdate;//出版日期
    private int discount;//原价
    private int sellcount;//销售数量

    public int getSellcount() {
        return sellcount;
    }

    public void setSellcount(int sellcount) {
        this.sellcount = sellcount;
    }

    public int getBookid() {
        return bookid;
    }

    public void setBookid(int bookid) {
        this.bookid = bookid;
    }

    public String getBookname() {
        return bookname;
    }

    public void setBookname(String bookname) {
        this.bookname = bookname;
    }

    public int getCategoryid() {
        return categoryid;
    }

    public void setCategoryid(int categoryid) {
        this.categoryid = categoryid;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getSell() {
        return sell;
    }

    public void setSell(String sell) {
        this.sell = sell;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getBookimg() {
        return bookimg;
    }

    public void setBookimg(String bookimg) {
        this.bookimg = bookimg;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public String getPublicationdate() {
        return publicationdate;
    }

    public void setPublicationdate(String publicationdate) {
        this.publicationdate = publicationdate;
    }

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    @Override
    public String toString() {
        return "Book [bookid=" + bookid + ", bookname=" + bookname
                + ", categoryid=" + categoryid + ", author=" + author
                + ", sell=" + sell + ", price=" + price + ", quantity="
                + quantity + ", bookimg=" + bookimg + ", info=" + info
                + ", publicationdate=" + publicationdate + ", discount="
                + discount + "]";
    }


}
