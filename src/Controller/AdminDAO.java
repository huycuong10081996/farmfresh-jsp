package Controller;

import Model.Admin;

public interface AdminDAO {
    public boolean checkAdmin(String adminEmail);

    public void addAdmin(Admin admin);

    public void editAdmin(Admin admin);

    public void removeAdmin(String adminId);
}
