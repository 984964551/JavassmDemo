package wac.service;

import wac.domain.Admin;


public interface AdminService {
    //查询管理员的用户名和密码
    public Admin findlogin(Admin admin);
    //添加管理员
    public void saveadmin(Admin admin);
    //判断用户名是否重复
    public Admin adimusername(String username);
}
