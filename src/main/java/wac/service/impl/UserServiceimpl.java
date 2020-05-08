package wac.service.impl;

import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import wac.dao.Userdao;
import wac.domain.PageBean;
import wac.domain.User;
import wac.service.UserService;

import java.util.List;

@Service
public class UserServiceimpl implements UserService {
    @Autowired
    private Userdao userdao;
    @Override
    public List<User> findall() {
        //调用userdao进行查询
        List<User> users=userdao.findall();
        return users;
    }

    @Override
    public PageBean<List> findbypage(User user, int page) {
        PageBean<List> pb=new PageBean<>();
        pb.setCurrentPage(page);
        int size=5;
        //分页，必须在查询的语句之前
        PageHelper.startPage(page, size);
        List<User> list = userdao.findbycondition(user);
        pb.setList(list);
        int totalcount = userdao.findtotalcount(user);
        pb.setTotalCount(totalcount);
        int totalpage=totalcount%size==0 ? totalcount/size :(totalcount/size)+1;
        pb.setTotalPage(totalpage);
        pb.setUser(user);
        return pb;
    }

    @Override
    public void deleteuser(int id) {
        userdao.deletuserbyid(id);
    }

    @Override
    public User findbyid(int id) {
        User user = userdao.findbyid(id);
        return user;
    }

    @Override
    public void updateuser(User user) {
        userdao.updateuser(user);
    }

    @Override
    public void insertuser(User user) {
        userdao.insertuser(user);
    }


//    @Override
////    public void UserAdd(User user) {
////        userdao.UserAdd(user);
////    }
////
////    @Override
////    public void DeleteUserbyId(String id) {
////        //将String转换成int id
////        userdao.DeletUserbyId(Integer.parseInt(id));
////    }
////
////    @Override
////    public User findbyId(String id) {
////        User user=userdao.findbyId(Integer.parseInt(id));
////        return user;
////    }
////
////    @Override
////    public void updateUser(User user) {
////        userdao.updateUser(user);
////    }
////
////    @Override
////    public void deleteselect(String[] ids) {
////        for (String id : ids) {
////            userdao.DeletUserbyId(Integer.parseInt(id));
////        }
////    }
////
////    @Override
////    public PageBean<User> findUserByPage(String _currentPage, String _rows,User user) {
////        //String类型转换为int类型
////        int currentPage=Integer.parseInt(_currentPage);//当前页码
////        int rows=Integer.parseInt(_rows);//每页显示的记录数
////        //创建一个PageBean对象
////        PageBean<User> pb=new PageBean<>();
////        //查询总记录数
////        int totalCount=userdao.finTotalCount(user);
////        pb.setTotalCount(totalCount);
////        if (currentPage<=0){
////            currentPage=1;
////        }
////        int totalPage1=totalCount % rows==0 ? totalCount/rows : (totalCount/rows)+1;
////        if (currentPage>totalPage1){
////            currentPage=totalPage1;
////        }
////        //将currentPage和rows的值 传入pageBean对象
////        pb.setCurrentPage(currentPage);
////        pb.setRows(rows);
////        //查询list对象
////        //开始的条数
////        int start=(currentPage-1)*rows;
////        List<User>list=userdao.findByPage(start,rows,user);
////        pb.setList(list);
////        //计算总页码
////        int totalPage=totalCount % rows==0 ? totalCount/rows : (totalCount/rows)+1;
////        pb.setTotalPage(totalPage);
////        return pb;
////    }
}
