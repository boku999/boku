package cn.bdqn.entity;

/**
 *
 * 详细地址表
 */
public class AddressItem {

    private int id;//地址id
    private String address;//详细地址
    private String recipient;//收件人
    private String phone;//手机号码
    private int uid;//用户id

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getRecipient() {
        return recipient;
    }

    public void setRecipient(String recipient) {
        this.recipient = recipient;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    @Override
    public String toString() {
        return "AddressItem{" +
                "id=" + id +
                ", address='" + address + '\'' +
                ", recipient='" + recipient + '\'' +
                ", phone='" + phone + '\'' +
                ", uid=" + uid +
                '}';
    }
}
