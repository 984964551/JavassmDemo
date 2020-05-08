package wac.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import wac.dao.Admindao;
import wac.domain.Admin;
import wac.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    private Admindao admindao;
    @Override
    public Admin findlogin(Admin admin) {
        Admin admin1 =null;
        try {
            admin1 =admindao.findlogin(admin);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return admin1;
    }

    @Override
    public void saveadmin(Admin admin) {
        admindao.saveadmin(admin);
    }

    @Override
    public Admin adimusername(String username) {
        Admin admin=null;
        try {
            admin=admindao.adminusername(username);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return admin;
    }
}
