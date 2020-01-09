package Model;

public class AddressDetail {
    private String address;
    private Province province;
    private String postCode;

    public AddressDetail () {}

    public AddressDetail(String address, Province province, String postCode) {
        this.address = address;
        this.province = province;
        this.postCode = postCode;
    }

    public Province getProvince() {
        return province;
    }

    public void setProvince(Province province) {
        this.province = province;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPostCode() {
        return postCode;
    }

    public void setPostCode(String postCode) {
        this.postCode = postCode;
    }
}
