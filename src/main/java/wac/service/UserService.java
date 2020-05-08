package wac.service;

import wac.domain.PageBean;
import wac.domain.User;

import java.util.List;
import java.util.Map;

public interface UserService {
    //查询所有用户信息
    public List<User> findall();

    //分页查询用户
    public PageBean findbypage(User user,int page);

    //根据id删除用户
    public void deleteuser(int id);

    //根据id查询用户
    public User findbyid(int id);

    //修改用户信息
    public void updateuser(User user);

    //添加联系人
    public void insertuser(User user);

    //添加用户
//    public void UserAdd(User user);
//    //通过id删除用户
//    public void DeleteUserbyId(String id);
//    //通过id查找用户
//    public User findbyId(String id);
//    //修改用户
//    public void updateUser(User user);
//    //删除所选用户
//    public void deleteselect(String[] ids);
//    //分页与条件查询
//    public PageBean<User> findUserByPage(String _currentPage, String _rows,User user);
}
