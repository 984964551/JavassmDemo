package wac.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import wac.domain.Admin;

@Repository
public interface Admindao {
    //查询管理员的用户名和密码
    @Select("select * from user where username=#{username}&& password=#{password}")
    public Admin findlogin(Admin admin);

    //添加管理员
    @Insert("insert into user value (null,#{username},#{password})")
    public void saveadmin(Admin admin);

    //判断注册的用户名是否重复
    @Select("select * from user where username=#{username}")
    public Admin adminusername(String username);
}
