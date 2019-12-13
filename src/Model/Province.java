package Model;

import java.util.List;

public class Province {
    private String provinceId;
    private String provinceTitle;
    private List<District> districts;

    public Province () {}

    public Province(String provinceId, String provinceTitle) {
        this.provinceId = provinceId;
        this.provinceTitle = provinceTitle;
    }

    public Province(String provinceId, String provinceTitle, List<District> districts) {
        this.provinceId = provinceId;
        this.provinceTitle = provinceTitle;
        this.districts = districts;
    }

    public String getProvinceId() {
        return provinceId;
    }

    public void setProvinceId(String provinceId) {
        this.provinceId = provinceId;
    }

    public String getProvinceTitle() {
        return provinceTitle;
    }

    public void setProvinceTitle(String provinceTitle) {
        this.provinceTitle = provinceTitle;
    }
}
