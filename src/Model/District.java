package Model;

public class District {
    private String districtId;
    private String districtTitle;

    public District(String districtId, String districtTitle) {
        this.districtId = districtId;
        this.districtTitle = districtTitle;
    }

    public String getDistrictId() {
        return districtId;
    }

    public void setDistrictId(String districtId) {
        this.districtId = districtId;
    }

    public String getDistrictTitle() {
        return districtTitle;
    }

    public void setDistrictTitle(String districtTitle) {
        this.districtTitle = districtTitle;
    }
}
