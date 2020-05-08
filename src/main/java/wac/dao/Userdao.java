package wac.dao;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;
import wac.domain.User;

import java.util.List;
import java.util.Map;

@Repository
public interface Userdao {
    //查询所有用户
    @Select("select * from users")
    public List<User> findall();

    //分页查询用户
    @Select("<script>select * from users where 1=1 "
            + "<if test='name!=null'> and name like concat('%',#{name},'%') </if>"
            + "<if test='adress!=null'> and adress like concat('%',#{adress},'%') </if>"
            + "<if test='email!=null'> and email like concat('%',#{email},'%') </if>"
            + "</script>")
//    @Select("<script>select * from users where 1=1<if test='name!=null'>and name = #{name}</if></script>")
    public List<User> findbycondition(User user);

    //查询总记录数
    @Select("<script>" +
            "select count(*) from users where 1=1 "
            + "<if test='name!=null'> and name like concat('%',#{name},'%') </if>"
            + "<if test='adress!=null'> and adress like concat('%',#{adress},'%') </if>"
            + "<if test='email!=null'> and email like concat('%',#{email},'%') </if>"
            + "</script>")
//    @Select("<script>select count(*) from users where 1=1<if test='name!=null'>and name = #{name}</if></script>")
    public int findtotalcount(User user);

    //通过id删除用户
    @Delete("delete from users where id=#{id}")
    public void deletuserbyid(int id);

    //根据id查询用户
    @Select("select * from users where id=#{id}")
    public User findbyid(int id);

    //修改用户信息
    @Update("update users set name=#{name},sex=#{sex},age=#{age},adress=#{adress},qq=#{qq},email=#{email} where id=#{id}")
    public void updateuser(User user);

    //添加联系人
    @Insert("insert into users value(null,#{name},#{sex},#{age},#{adress},#{qq},#{email})")
    public void insertuser(User user);
}